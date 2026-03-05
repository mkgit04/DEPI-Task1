import 'dart:developer';

import 'package:sqflite/sqflite.dart'
    show getDatabasesPath, Database, openDatabase;

class Sqldb {
  static Database? _db;

  Future<Database?> get db async {
    if (_db == null) {
      _db = await initDb();
      return _db;
    } else {
      return _db;
    }
  }

  Future initDb() async {
    String dbPath = await getDatabasesPath();
    String path = "$dbPath/test.db";
    Database myDb = await openDatabase(
      path,
      onCreate: _onCreate,
      version: 1,
      onUpgrade: _onUpgrade,
    );
    return myDb;
  }

  void _onCreate(Database db, int version) async {
    await db.execute('''
    CREATE TABLE favourites (
      "id" INTEGER NOT NULL PRIMARY KEY,
      "name" TEXT NOT NULL,
      "price" NUMBER NOT NULL,
      "image" TEXT NOT NULL
    );
  ''');
    log("Database Created");
  }

  void _onUpgrade(Database db, int oldVersion, int newVersion) {
    log("Database Updated");
  }

  Future<List<Map<dynamic, dynamic>>> readData(
    String sql,
    List<Object?> values,
  ) async {
    Database? myDb = await db;
    List<Map> response = await myDb!.rawQuery(sql, values);
    return response;
  }

  Future<int> insertData(String sql, List<Object?> values) async {
    Database? myDb = await db;
    int response = await myDb!.rawInsert(sql, values);
    return response;
  }

  Future<int> updateData(String sql, List<Object?> values) async {
    Database? myDb = await db;
    int response = await myDb!.rawUpdate(sql, values);
    return response;
  }

  Future<int> deleteData(String sql, List<Object?> values) async {
    Database? myDb = await db;
    int response = await myDb!.rawDelete(sql, values);
    return response;
  }
}
