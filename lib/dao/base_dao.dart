import 'package:sqflite/sqflite.dart';

import '../service/local_storage/database_helper.dart';


abstract class BaseDao<T> {
  final String tableName;
  final DatabaseHelper _databaseHelper = DatabaseHelper();

  BaseDao(this.tableName);

  Future<Database> get database async => await _databaseHelper.database;

  Future<void> insert(T object) async {
    final db = await database;
    await db.insert(tableName, toMap(object));
  }

  Future<void> insertOrUpdate(T object) async {
    final db = await database;
    await db.insert(tableName, toMap(object), conflictAlgorithm: ConflictAlgorithm.replace);
  }

  Future<void> insertList(List<T> list) async {
    final db = await database;
    for (var object in list) {
      await db.insert(tableName, toMap(object));
    }
  }

  Future<void> insertOrUpdateList(List<T> list) async {
    final db = await database;
    for (var object in list) {
      await db.insert(tableName, toMap(object), conflictAlgorithm: ConflictAlgorithm.replace);
    }
  }

  Future<void> update(T object) async {
    final db = await database;
    await db.update(tableName, toMap(object), where: 'id = ?', whereArgs: [getId(object)]);
  }

  Future<void> updateList(List<T> list) async {
    final db = await database;
    for (var object in list) {
      await db.update(tableName, toMap(object), where: 'id = ?', whereArgs: [getId(object)]);
    }
  }

  Future<void> delete(T object) async {
    final db = await database;
    await db.delete(tableName, where: 'id = ?', whereArgs: [getId(object)]);
  }

  Future<void> deleteList(List<T> list) async {
    final db = await database;
    for (var object in list) {
      await db.delete(tableName, where: 'id = ?', whereArgs: [getId(object)]);
    }
  }

  Future<List<Map<String, dynamic>>> getAll() async {
    final db = await database;
    return await db.query(tableName);
  }

  Future<Map<String, dynamic>?> getById(int id) async {
    final db = await database;
    final List<Map<String, dynamic>> results = await db.query(tableName, where: 'id = ?', whereArgs: [id]);
    return results.isNotEmpty ? results.first : null;
  }

  Map<String, dynamic> toMap(T object);

  int getId(T object);
}
