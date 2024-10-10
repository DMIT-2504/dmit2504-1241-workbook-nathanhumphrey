import 'package:sqflite/sqflite.dart';

class TodoController {
  static Database? _db;
  static TodoController? _instance;

  static TodoController getInstance(Database db) {
    // if (_instance == null) {
    //   _instance = TodoController._internal(db);
    // }

    _instance ??= TodoController._internal(db);

    return _instance!;
  }

  TodoController._internal(Database db) {
    _db = db;
  }
}
