import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:week_07_firebase_connect/models/todo.dart';

class TodoController {
  // static Database? _db;
  static FirebaseFirestore? _db;
  static TodoController? _instance;
  static const tableName = 'todos';
  static User? _user;

  static TodoController getInstance(FirebaseFirestore db) {
    // if (_instance == null) {
    //   _instance = TodoController._internal(db);
    // }

    // _instance ??= TodoController._internal(db);
    // Always want the current user
    if (_instance != null) {
      _instance = null;
    }

    _instance = TodoController._internal(db);

    return _instance!;
  }

  TodoController._internal(FirebaseFirestore db) {
    _db = db;
    _user = FirebaseAuth.instance.currentUser;
  }

  Future<void> insert(Todo todo) async {
    if (_user == null) {
      throw StateError('Cannot insert for null user');
    }

    final doc =
        await _db?.collection('/todos/${_user!.uid}/todos').add(todo.toMap());
    todo.id = doc?.id;
  }

  Future<void> update(Todo todo) async {
    // await _db!
    //     .update(tableName, todo.toMap(), where: 'id = ?', whereArgs: [todo.id]);
  }

  Future<void> deleteAll() async {
    // await _db!.delete(tableName);
  }

  Future<List<Todo>> getTodos() async {
    // final List<Map<String, dynamic>> maps = await _db!.query(tableName);

    // return List.generate(maps.length, (i) {
    //   return Todo(
    //     id: maps[i]['id'],
    //     description: maps[i]['description'],
    //     done: maps[i]['done'] == 1,
    //   );
    // });
    return [];
  }
}
