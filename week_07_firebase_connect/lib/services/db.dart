import 'package:cloud_firestore/cloud_firestore.dart';

// const databaseName = 'todos.db';

Future<FirebaseFirestore> getDatabase() async {
  return FirebaseFirestore.instance;
  // return openDatabase(databaseName, version: 1,
  //     onCreate: (Database db, int version) async {
  //   // When creating the db, create the table
  //   await db.execute('''
  //         CREATE TABLE todos (
  //           id INTEGER PRIMARY KEY,
  //           description TEXT,
  //           done INTEGER DEFAULT 0
  //         )
  //       ''');
  // });
}
