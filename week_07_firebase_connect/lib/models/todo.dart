class Todo {
  String? id;
  String description;
  bool done;

  Todo({this.id, required this.description, required this.done});

  Map<String, dynamic> toMap() {
    return {
      if (id != null) 'id': id,
      'description': description,
      'done': done ? 1 : 0,
    };
  }
}
