import 'dart:convert';
import 'package:json_example/models/_models.dart';
import 'package:http/http.dart' as http;

const _usersEndpoint = 'https://jsonplaceholder.typicode.com/users';

class UserController {
  Future<List<User>> getUsers() async {
    final response = await http.get(_usersEndpoint);
    if (response.statusCode < 300) {
      try {
        List users = json.decode(response.body);
        return users.map((user) => User.fromJson(user)).toList();
      } catch (e) {
        print('Failed to parse response body. $e');
      }
    } else {
      print('Error getting users: $response');
    }
    return [];
  }
}
