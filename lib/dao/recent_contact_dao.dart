import 'package:fim/service/preferences.dart';
import 'package:fim/model/recent_contact.dart';
import 'package:path/path.dart';
import 'package:sqflite/sqflite.dart';

class RecentContactDao {
  static Database database;

  static void init() async {
    database = await openDatabase(
      join(await getDatabasesPath(),
          getUserId().toString() + '/recent_contact.db'),
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
            name INTEGER, 
            avatar_url Text, 
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
    var copy = RecentContact.copy(contact);

    var contactFromDB = await _get(contact.objectType, contact.objectId);
    if (contactFromDB != null) {
      copy.unread = contactFromDB.unread + copy.unread;
    }
    await _update(copy);
  }

  static Future<RecentContact> _get(int objectType, int objectId) async {
    List<Map> maps = await database.query(
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
    await database.insert("recent_contact", contact.toMap(),
        conflictAlgorithm: ConflictAlgorithm.replace);
  }

  static void updateRead(int objectType, int objectId) async {
    await database.rawUpdate(
        "UPDATE recent_contact SET unread = 0 where object_type = ? and object_id = ?",
        [objectType, objectId]);
  }

  static Future<void> updateInfo(
      int objectType, int objectId, String name, String avatarUrl) async {
    await database.rawUpdate(
        "UPDATE recent_contact SET name = ?,avatar_url = ? where object_type = ? and object_id = ?",
        [name, avatarUrl, objectType, objectId]);
  }

  static Future<List<RecentContact>> list() async {
    List<Map> maps = await database.query(
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
