import 'dart:core';
import 'dart:io';
import 'package:nw_contact/models/contact_model.dart';
import 'package:sqflite/sqflite.dart';
import 'package:path_provider/path_provider.dart';

class DatabaseHelper {
  static final DatabaseHelper instance = DatabaseHelper._instance();
  static Database? _db;

  DatabaseHelper._instance();

  String contactTable = 'contactTable';
  String colId = 'id';
  String colName = 'name';
  String colNumber = 'number';

  Future<Database?> get db async {
    _db ??= await _initDb();
    // _db?.execute('DELETE FROM $contactTable');
    print('Database initialized: $_db');
    return _db;
  }

  Future<Database> _initDb() async {
    Directory dir = await getApplicationDocumentsDirectory();
    String path = '${dir.path}/contact_list.db';

    final todoListDB = await openDatabase(
        path, version: 1, onCreate: _createDb
    );

    print('Database path: $path');
    return todoListDB;
  }

  void _createDb(Database db, int version) async {
    await db.execute(
        'CREATE TABLE $contactTable($colId INTEGER PRIMARY KEY AUTOINCREMENT, $colName TEXT, $colNumber INTEGER)'
    );
    print('Table created');
  }

  Future<List<Map<String, dynamic>>> getContactMapList() async {
    Database? db = await this.db;
    if (db == null) {
      throw Exception("Database is not initialized");
    }
    final List<Map<String, dynamic>> result = await db.query(contactTable);
    print('Contact map list: $result');
    return result;
  }

  Future<List<Contact>> getContactList() async {
    final List<Map<String, dynamic>> contactMapList = await getContactMapList();
    final List<Contact> contactList = [];

    contactMapList.forEach((contactMap) {
      contactList.add(Contact.fromMap(contactMap));
    });

    print('Contact list: $contactList');
    return contactList;
  }

  Future<int> insertContact(Contact contact) async {
    Database? db = await this.db;
    if (db == null) {
      throw Exception("Database is not initialized");
    }
    final int result = await db.insert(
      contactTable,
      contact.toMap(),
    );
    print('Inserted contact: ${contact.toMap()}');
    return result;
  }

  Future<int> updateContact(Contact contact) async {
    Database? db = await this.db;
    if (db == null) {
      throw Exception("Database is not initialized");
    }
    final int result = await db.update(
        contactTable,
        contact.toMap(),
        where: '$colId = ?',
        whereArgs: [contact.id]
    );
    print('Updated contact: $result');
    return result;
  }

  Future<int> deleteContact(int id) async {
    Database? db = await this.db;
    if (db == null) {
      throw Exception("Database is not initialized");
    }
    final int result = await db.delete(
        contactTable,
        where: '$colId = ?',
        whereArgs: [id]
    );
    print('Deleted contact: $result');
    return result;
  }
}