class User {
  final String name;
  final String email;

  const User({required this.name, required this.email});

  @override
  String toString() => 'Name: $name, Email: $email';
}
