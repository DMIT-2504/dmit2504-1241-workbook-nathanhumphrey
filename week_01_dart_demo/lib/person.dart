class Person {
  late String _name;
  late int _age;

  Person(String name, int age) {
    this.name = name;
    // TODO: use the age property
    _age = age;
  }

  /// The name of the person
  String get name {
    return _name;
  }

  set name(String value) {
    if (value.trim().isEmpty) {
      throw Exception('Name cannot be empty');
    }
  }

  // TODO: create a set and get for age (age cannot be less than zero)
}
