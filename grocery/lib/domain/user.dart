import 'dart:convert';

class User {
  final String username;
  final String password;

  User({
    required this.username,
    required this.password,
  });

  @override
  String toString() {
    return 'User($username)';
  }

  String toJson() {
    final json = {
      'username': username,
      'password': password,
    };
    return jsonEncode(json);
  }
}
