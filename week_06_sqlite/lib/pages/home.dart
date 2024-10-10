import 'package:flutter/material.dart';
import 'package:week_06_sqlite/controllers/todo_controller.dart';
import 'package:week_06_sqlite/models/todo.dart';
import 'package:week_06_sqlite/services/db.dart';

class Home extends StatefulWidget {
  const Home({super.key});

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  List<Todo> _todos = [];
  late int _counter;
  late TodoController _controller;

  @override
  void initState() {
    _initState();
    super.initState();
  }

  _initState() async {
    _controller = TodoController.getInstance(await getDatabase());
    _fetchTodos();
  }

  _fetchTodos() async {
    final todos = await _controller.getTodos();
    setState(() {
      _todos = todos;
      _counter = _todos.length;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Todos Application'),
      ),
      body: Center(
        child: Column(
          children: [
            _todos.isEmpty
                ? const Text('No todos')
                : Expanded(
                    child: ListView.builder(
                      scrollDirection: Axis.vertical,
                      itemCount: _todos.length,
                      itemBuilder: (context, index) {
                        return ListTile(
                          title: Text(_todos[index].description),
                          trailing: Checkbox(
                            value: _todos[index].done,
                            onChanged: (value) async {
                              _todos[index].done = value!;
                              _controller.update(_todos[index]);
                            },
                          ),
                        );
                      },
                    ),
                  ),
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () async {
          await _controller
              .insert(Todo(description: 'Todo $_counter', done: false));
        },
        child: const Icon(Icons.add),
      ),
    );
  }
}
