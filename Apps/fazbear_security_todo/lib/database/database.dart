import 'dart:core';
import 'dart:io';
import 'package:fazbear_security_todo/models/task_model.dart';
import 'package:sqflite/sqflite.dart';
import 'package:path_provider/path_provider.dart';

class DatabaseHelper {
  static final DatabaseHelper instance = DatabaseHelper._instance();
  static Database? _db;

  String taskTable = 'task_table';
  String colId = 'id';
  String colTitle = 'title';
  String colData = 'data';

  DatabaseHelper._instance();

  Future<Database?> get db async {
    _db ??= await _initDb();
    return _db;
  }

  Future<Database> _initDb() async {
    Directory dir = await getApplicationDocumentsDirectory();
    String path = '${dir.path}todo_list.db';
    final todoListDB =
        await openDatabase(path, version: 1, onCreate: _createDb);
    return todoListDB;
  }

  void _createDb(Database db, int version) async {
    await db.execute(
        'CREATE TABLE $taskTable($colId INTEGER PRIMARY KEY AUTOINCREMENT, $colTitle TEXT, $colData TEXT)');
  }

  Future<List<Map<String, dynamic>>> getTaskMapList() async {
    Database? db = await this.db;
    final List<Map<String, dynamic>> result = await db!.query(taskTable);
    return result;
  }

  Future<List<Task>> getTaskList() async {
    final List<Map<String, dynamic>> noteMapList = await getTaskMapList();

    final List<Task> taskList = [];

    for (var taskMap in noteMapList) {
      taskList.add(Task.fromMap(taskMap));
    }

    return taskList;
  }

  Future<int> insertTask(Task task) async {
    Database? db = await this.db;
    final int result = await db!.insert(
      taskTable,
      task.toMap(),
    );
    return result;
  }

  Future<int> updateTask(Task task) async {
    Database? db = await this.db;
    final int result = await db!.update(taskTable, task.toMap(),
        where: '$colId = ?', whereArgs: [task.id]);
    return result;
  }

  Future<int> deleteTask(int id) async {
    Database? db = await this.db;
    final int result =
        await db!.delete(taskTable, where: '$colId = ?', whereArgs: [id]);
    return result;
  }
}
