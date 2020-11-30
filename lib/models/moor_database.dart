import 'dart:convert';

import 'package:moor/moor.dart';
import 'package:moor_flutter/moor_flutter.dart';

// Moor works by source gen. This file will all the generated code.
part 'moor_database.g.dart';

// The name of the database table is "tasks"
// By default, the name of the generated data class will be "Task" (without "s")
List<Post> postFromApiJson(String str) => List<Post>.from(json.decode(str).map((x) => Post.fromJson(x)));
User userFromApiJson(String str) =>  User.fromJson(jsonDecode(str));

@DataClassName('Post')
class Posts extends Table {
  // autoIncrement automatically sets this to be the primary key
  IntColumn get id => integer().autoIncrement()();
  IntColumn get postId => integer()();
  IntColumn get userId => integer()();
  TextColumn get title => text().withLength(min: 1, max: 1050)();
  TextColumn get body => text().withLength(min: 1, max: 1050)();

}
@DataClassName('User')
class Users extends Table {
  // autoIncrement automatically sets this to be the primary key
  IntColumn get id => integer()();
  TextColumn get name => text().withLength(min: 1, max: 1050)();
  TextColumn get username => text().withLength(min: 1, max: 1050)();
  TextColumn get email => text().withLength(min: 1, max: 100)();
  TextColumn get phone => text().withLength(min: 1, max: 100)();
  TextColumn get website => text().withLength(min: 1, max: 100)();
  TextColumn get street => text().withLength(min: 1, max: 100)();
  TextColumn get suite => text().withLength(min: 1, max: 100)();
  TextColumn get city => text().withLength(min: 1, max: 100)();
  TextColumn get zipcode => text().withLength(min: 1, max: 100)();
  TextColumn get lat => text().withLength(min: 1, max: 40)();
  TextColumn get lng => text().withLength(min: 1, max: 40)();
  TextColumn get company_name => text().withLength(min: 1, max: 40)();
  TextColumn get catch_phrase => text().withLength(min: 1, max: 40)();
  TextColumn get bs => text().withLength(min: 1, max: 40)();

  @override
  Set<Column> get primaryKey => {id};
}


// This annotation tells the code generator which tables this DB works with
@UseMoor(tables: [Posts, Users])
// _$AppDatabase is the name of the generated class
class Database extends _$Database {
  Database()
  // Specify the location of the database file
      : super((FlutterQueryExecutor.inDatabaseFolder(
    path: 'db.sqlite',
    // Good for debugging - prints SQL in the console
    logStatements: true,
  )));

  // Bump this when changing tables and columns.
  // Migrations will be covered in the next part.
  @override
  int get schemaVersion => 1;

  Future<List<Post>> getAllPosts() => select(posts).get();

  Future<Post> getPost(int id) {
    return (select(posts)..where((t) => t.id.equals(id))).getSingle();
  }

  Future<User> getUser(int id) {
    return (select(users)..where((t) => t.id.equals(id))).getSingle();
  }

  Future insertPost(Post post) => into(posts).insert(post);

  Future insertUser(User userdata) => into(users).insert(userdata);

  Future updateUser(User userdata)  {
    return update(users).replace(userdata);
  }

  Future updatePost(Post post) {
    return update(posts).replace(post);
  }


}

