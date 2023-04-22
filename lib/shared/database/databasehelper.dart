import 'package:path/path.dart' as p;
import 'package:sqflite/sqflite.dart';

import '../../core.dart';

class DatabaseHelper {
  static const _databaseName = "favourite_tango.db";
  static const _databaseVersion = 1;

  static const table = "favourite_tango_table";

  static const id = "id";
  static const japaneseMain = "japaneseMain";
  static const japaneseExtra = "japaneseExtra";
  static const means = "means";
  static const type = "type";
  static const exJP1 = "exJP1";
  static const exMean1 = "exMean1";
  static const exJP2 = "exJP2";
  static const exMean2 = "exMean2";
  static const audio = "audio";

  DatabaseHelper._privateConstructor();
  static final DatabaseHelper instance = DatabaseHelper._privateConstructor();

  static Database? _database;
  Future<Database> get database async => _database ??= await _initDatabase();

  _initDatabase() async {
    String path = p.join(await getDatabasesPath(), _databaseName);
    return await openDatabase(path,
        version: _databaseVersion, onCreate: _onCreate);
  }

  Future _onCreate(Database db, int version) async {
    await db.execute('''
    CREATE TABLE $table(
      $id INTEGER PRIMARY KEY, $japaneseMain TEXT, $japaneseExtra TEXT,
      $means TEXT, $type TEXT, $exJP1 TEXT, $exMean1 TEXT,
      $exJP2 TEXT, $exMean2 TEXT, $audio TEXT
    )
    ''');
  }

  Future<int> insertTango(Tango tango) async {
    Database db = await instance.database;
    var res = await db.insert(table, tango.toMap(),
        conflictAlgorithm: ConflictAlgorithm.replace);
    return res;
  }

  Future<List<Map<String, dynamic>>> queryAllRows() async {
    Database db = await instance.database;
    var res = await db.query(table);
    return res;
  }

  Future<List<Map<String, Object?>>> clearTable() async {
    Database db = await instance.database;
    return await db.rawQuery("DELETE FROM $table");
  }

  Future<List<Map<String, Object?>>> deleteTango(int id) async {
    Database db = await instance.database;
    return await db.rawQuery("DELETE FROM $table WHERE id ='$id'");
  }

  Future<int> checkTango(int id) async {
    Database db = await instance.database;
    List<Map<String, dynamic>> maps =
        await db.rawQuery("SELECT * FROM $table WHERE id = '$id'");
    if (maps.isEmpty) {
      return 0;
    } else {
      return maps.length;
    }
  }

  Future<List<Tango>> listFavourite() async {
    Database db = await instance.database;
    List<Map<String, dynamic>> maps = await db.query(table);
    return List.generate(maps.length, (i) {
      return Tango(
        id: maps[i]["id"],
        japaneseMain: maps[i]["japaneseMain"],
        japaneseExtra: maps[i]["japaneseExtra"],
        means: maps[i]["means"],
        type: maps[i]["type"],
        exJP1: maps[i]["exJP1"],
        exMean1: maps[i]["exMean1"],
        exJP2: maps[i]["exJP2"],
        exMean2: maps[i]["exMean2"],
        audio: maps[i]["audio"],
      );
    });
  }
}
