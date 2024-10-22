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

    // Always want an updated instance to track current user
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

  Future<List<Todo>> getTodos() async {
    if (_user == null) {
      throw StateError('Cannot fetch todos when a user is null');
    }

    final snapshot = await _db?.collection('/todos/${_user!.uid}/todos').get();

    final todos = snapshot?.docs.map((doc) {
      return Todo(
        id: doc.id,
        description: doc['description'],
        done: doc['done'] == 1,
      );
    }).toList();

    return todos ?? [];
  }

  Future<void> insert(Todo todo) async {
    if (_user == null) {
      throw StateError('Cannot add a todo when the user is null');
    }

    await _db
        ?.collection('/todos/${_user!.uid}/todos')
        .add(todo.toMap())
        .then((DocumentReference doc) {
      todo.id = doc.id;
    });
  }

  Future<void> update(Todo todo) async {
    if (_user == null) {
      throw StateError('Cannot update a todo when the user is null');
    }

    await _db
        ?.collection('/todos/${_user!.uid}/todos')
        .doc(todo.id)
        .update(todo.toMap());
  }

  Future<void> deleteTodo(Todo todo) async {
    if (_user == null) {
      throw StateError('Cannot update a todo when the user is null');
    }

    await _db?.collection('/todos/${_user!.uid}/todos').doc(todo.id).delete();
  }

  Future<void> deleteAll() async {
    // Must iterate over all todos and individually delete, not ideal
    final snapshot = await _db?.collection('/todos/${_user!.uid}/todos').get();

    snapshot?.docs.forEach((doc) async {
      await _db?.collection('/todos/${_user!.uid}/todos').doc(doc.id).delete();
    });
  }
}
