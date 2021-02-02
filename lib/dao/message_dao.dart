import 'package:fim/service/preferences.dart';
import 'package:fim/model/message.dart';
import 'package:fim/util/logger.dart';
import 'package:path/path.dart';
import 'package:sqflite/sqflite.dart';

class MessageDao {
  static Database database;

  static init() async {
    database = await openDatabase(
      join(await getDatabasesPath(),getUserId().toString()+ '/message.db'),
      onCreate: (db, version) {
        logger.i("创建数据库 message");
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
            sender_nickname Text,
            sender_avatar_url Text,
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
    await database.insert("message", message.toMap());
    setMaxSYN(message.seq);
  }

  static void updateStatus(int objectType, int objectId, int status) async {
    await database.update(
      "message",
      {"status": status},
      where: "object_type = ? and object_id = ?",
      whereArgs: [objectType, objectId],
    );
  }

  static Future<List<Message>> list(
      int objectType, int objectId, int seq, int limit) async {
    List<Map> maps = await database.query(
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
