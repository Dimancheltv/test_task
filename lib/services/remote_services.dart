import 'dart:async';
import 'dart:convert';
import 'dart:io';
import 'package:http/http.dart' as http;
import 'package:task/models/moor_database.dart';
import '../settings.dart';

class RemoteServices {
  static var client = http.Client();

  static Future<List<Post>> fetchPosts() async {
    int timeout = timeoutApi;
    try {
      var response =
          await client.get(apiPostList).timeout(Duration(seconds: timeout));
      if (response.statusCode == 200) {
        var jsonString = response.body;
        return postFromApiJson(jsonString);
      } else {
        print('error api message');
        return null;
      }
    } on TimeoutException catch (e) {
      print('Timeout Error: $e');
      return null;
    } on SocketException catch (e) {
      print('Socket Error: $e');
      return null;
    }
  }

  static Future<Post> fetchPost(int id) async {
    int timeout = timeoutApi;
    try {
      var response = await client
          .get('$apiPostList/$id')
          .timeout(Duration(seconds: timeout));
      if (response.statusCode == 200) {
        var jsonString = response.body;
        return Post.fromJson(jsonDecode(jsonString));
      } else {
        print('error api message');
        return null;
      }
    } on TimeoutException catch (e) {
      print('Timeout Error: $e');
      return null;
    } on SocketException catch (e) {
      print('Socket Error: $e');
      return null;
    }
  }

  static Future<User> fetchUser(int id) async {
    int timeout = timeoutApi;
    try {
      var response = await client
          .get(apiPostPage + id.toString())
          .timeout(Duration(seconds: timeout));
      if (response.statusCode == 200) {
        var jsonString = response.body;
        return userFromApiJson(jsonString);
      } else {
        print('error api message');
        return null;
      }
    } on TimeoutException catch (e) {
      print('Timeout Error: $e');
      return null;
    } on SocketException catch (e) {
      print('Socket Error: $e');
      return null;
    }
  }
}
