import 'dart:async';

import 'package:flutter/widgets.dart';
import 'package:path/path.dart';
import 'package:sqflite/sqflite.dart';

class DatabaseController {
  static Database? _database;
  static final DatabaseController controllerInstance = DatabaseController._();

  DatabaseController._();

  Future<Database> get database async {
    if (_database != null) return _database!;

    _database = await initDB();
    return _database!;
  }

  Future<Database> initDB() async {
    WidgetsFlutterBinding.ensureInitialized();

    return openDatabase(join(await getDatabasesPath(), 'endawdle.db'),
        onCreate: createInitTables, version: 1);
  }

  FutureOr<void> createInitTables(Database db, int version) {
    return db.execute('CREATE TABLE modules(id INTEGER PRIMARY KEY, type INTEGER)');
  }

}
