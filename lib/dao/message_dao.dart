import 'package:fim/data/preferences.dart';
import 'package:fim/model/message.dart';
import 'package:path/path.dart';
import 'package:sqflite/sqflite.dart';

class MessageDao {
  static Database messageDatabase;

  static init() async {
    messageDatabase = await openDatabase(
      join(await getDatabasesPath(), 'message.db'),
      onCreate: (db, version) {
        print("创建数据库 message");
        return _onCreate(db, version);
      },
      version: 1,
    );
  }

  static void _onCreate(Database db, int version) async {
    await db.execute(
      '''CREATE TABLE message (
            id INTEGER PRIMARY KEY,
            object_type INTEGER, 
            object_id INTEGER, 
            sender_id INTEGER,
            to_user_ids Text,
            message_type INTEGER,
            message_content BLOB,
            seq INTEGER,
            send_time INTEGER,
            status INTEGER
            )''',
    );

    await db.execute(
      '''
      CREATE UNIQUE INDEX object_seq ON message (object_type,object_id,seq)
      ''',
    );
  }

  static void add(Message message) async {
    try {
      await messageDatabase.insert("message", message.toMap());
      setMaxSYN(message.seq);
    } catch (e) {
      print(e);
    }
  }

  static void updateStatus(int objectType, int objectId, int status) async {
    await messageDatabase.update(
      "message",
      {"status": status},
      where: "object_type = ? and object_id = ?",
      whereArgs: [objectType, objectId],
    );
  }

  static Future<List<Message>> list(
      int objectType, int objectId, int seq, int limit) async {
    List<Map> maps = await messageDatabase.query(
      "message",
      where: "object_type = ? and object_id = ? and seq < ?",
      whereArgs: [objectType, objectId, seq],
      limit: limit,
      orderBy: "seq desc",
    );

    List<Message> messages = List<Message>();
    for (var map in maps) {
      messages.add(Message.fromMap(map));
    }
    return messages;
  }
}
