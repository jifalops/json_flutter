import 'dart:convert';
import 'package:json_example/models/_models.dart';
import 'package:http/http.dart' as http;

const _baseUrl = 'https://jsonplaceholder.typicode.com';

Future<String> _fetch(String url) async {
  try {
    final response = await http.get(url);
    if (response.statusCode < 300) {
      return response.body;
    } else {
      print('Error fetching data: ${response?.statusCode} - ${response?.body}');
    }
  } catch (e) {}
  return null;
}

class Controller {
  static Future<List<User>> getUsers() async {
    final data = await _fetch('$_baseUrl/users');
    if (data != null) {
      try {
        List list = json.decode(data);
        return list.map((item) => User.fromJson(item)).toList();
      } catch (e) {
        print('Failed to parse response body. $e');
      }
    }
    return [];
  }

  static Future<List<Album>> getAlbums(int userId) async {
    final data = await _fetch('$_baseUrl/albums?userId=$userId');
    if (data != null) {
      try {
        List list = json.decode(data);
        return list.map((item) => Album.fromJson(item)).toList();
      } catch (e) {
        print('Failed to parse response body. $e');
      }
    }
    return [];
  }

  static Future<List<ToDo>> getToDos(int userId) async {
    final data = await _fetch('$_baseUrl/todos?userId=$userId');
    if (data != null) {
      try {
        List list = json.decode(data);
        return list.map((item) => ToDo.fromJson(item)).toList();
      } catch (e) {
        print('Failed to parse response body. $e');
      }
    }
    return [];
  }

  static Future<List<Post>> getPosts(int userId) async {
    final data = await _fetch('$_baseUrl/posts?userId=$userId');
    if (data != null) {
      try {
        List list = json.decode(data);
        return list.map((item) => Post.fromJson(item)).toList();
      } catch (e) {
        print('Failed to parse response body. $e');
      }
    }
    return [];
  }

  static Future<List<Comment>> getComments(int postId) async {
    final data = await _fetch('$_baseUrl/comments?postId=$postId');
    if (data != null) {
      try {
        List list = json.decode(data);
        return list.map((item) => Comment.fromJson(item)).toList();
      } catch (e) {
        print('Failed to parse response body. $e');
      }
    }
    return [];
  }

  static Future<List<Photo>> getPhotos(int albumId) async {
    final data = await _fetch('$_baseUrl/photos?albumId=$albumId');
    if (data != null) {
      try {
        List list = json.decode(data);
        return list.map((item) => Photo.fromJson(item)).toList();
      } catch (e) {
        print('Failed to parse response body. $e');
      }
    }
    return [];
  }
}
