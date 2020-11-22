import 'package:fim/model/recent_contact.dart';
import 'package:flutter/cupertino.dart';
import 'package:path/path.dart';
import 'package:sqflite/sqflite.dart';

class RecentContactDao {
  static Database messageDatabase;

  static void init() async {
    messageDatabase = await openDatabase(
      join(await getDatabasesPath(), 'recent_contact.db'),
      onCreate: (db, version) {
        print("创建数据库 recent_contact");
        return _onCreate(db, version);
      },
      version: 1,
    );
  }

  static void _onCreate(Database db, int version) async {
    await db.execute(
      '''CREATE TABLE recent_contact (
            id INTEGER PRIMARY KEY,
            object_type INTEGER, 
            object_id INTEGER, 
            last_time INTEGER,
            last_user_id INTEGER,
            last_message Text,
            unread INTEGER
            )''',
    );

    await db.execute(
      '''
      CREATE UNIQUE INDEX object ON recent_contact(object_type,object_id)
      ''',
    );
  }

  static Future<void> add(RecentContact contact) async {
    var contactFromDB = await _get(contact.objectType, contact.objectId);
    if (contactFromDB != null) {
      contact.unread = contactFromDB.unread + contact.unread;
    }
    await _update(contact);
  }

  static Future<RecentContact> _get(int objectType, int objectId) async {
    List<Map> maps = await messageDatabase.query(
      "recent_contact",
      where: 'object_type = ? and object_id = ?',
      whereArgs: [objectType, objectId],
    );
    if (maps.length == 0) {
      return null;
    }
    return RecentContact.fromMap(maps[0]);
  }

  static void _update(RecentContact contact) async {
    await messageDatabase.insert("recent_contact", contact.toMap(),
        conflictAlgorithm: ConflictAlgorithm.replace);
  }

  static void updateRead(int objectType, int objectId) async {
    await messageDatabase.rawUpdate(
        "UPDATE recent_contact SET unread = 0 where object_type = ? and object_id = ?",
        [objectType, objectId]);
  }

  static Future<List<RecentContact>> list() async {
    List<Map> maps = await messageDatabase.query(
      "recent_contact",
    );

    List<RecentContact> contacts = List<RecentContact>();
    for (var map in maps) {
      contacts.add(RecentContact.fromMap(map));
    }
    contacts.sort((left, right) => right.lastTime - left.lastTime);
    return contacts;
  }
}
