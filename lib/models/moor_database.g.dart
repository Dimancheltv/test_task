// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'moor_database.dart';

// **************************************************************************
// MoorGenerator
// **************************************************************************

// ignore_for_file: unnecessary_brace_in_string_interps, unnecessary_this
class Post extends DataClass implements Insertable<Post> {
  final int id;
  final int postId;
  final int userId;
  final String title;
  final String body;
  Post(
      {@required this.id,
      @required this.postId,
      @required this.userId,
      @required this.title,
      @required this.body});
  factory Post.fromData(Map<String, dynamic> data, GeneratedDatabase db,
      {String prefix}) {
    final effectivePrefix = prefix ?? '';
    final intType = db.typeSystem.forDartType<int>();
    final stringType = db.typeSystem.forDartType<String>();
    return Post(
      id: intType.mapFromDatabaseResponse(data['${effectivePrefix}id']),
      postId:
          intType.mapFromDatabaseResponse(data['${effectivePrefix}post_id']),
      userId:
          intType.mapFromDatabaseResponse(data['${effectivePrefix}user_id']),
      title:
          stringType.mapFromDatabaseResponse(data['${effectivePrefix}title']),
      body: stringType.mapFromDatabaseResponse(data['${effectivePrefix}body']),
    );
  }
  @override
  Map<String, Expression> toColumns(bool nullToAbsent) {
    final map = <String, Expression>{};
    if (!nullToAbsent || id != null) {
      map['id'] = Variable<int>(id);
    }
    if (!nullToAbsent || postId != null) {
      map['post_id'] = Variable<int>(postId);
    }
    if (!nullToAbsent || userId != null) {
      map['user_id'] = Variable<int>(userId);
    }
    if (!nullToAbsent || title != null) {
      map['title'] = Variable<String>(title);
    }
    if (!nullToAbsent || body != null) {
      map['body'] = Variable<String>(body);
    }
    return map;
  }

  PostsCompanion toCompanion(bool nullToAbsent) {
    return PostsCompanion(
      id: id == null && nullToAbsent ? const Value.absent() : Value(id),
      postId:
          postId == null && nullToAbsent ? const Value.absent() : Value(postId),
      userId:
          userId == null && nullToAbsent ? const Value.absent() : Value(userId),
      title:
          title == null && nullToAbsent ? const Value.absent() : Value(title),
      body: body == null && nullToAbsent ? const Value.absent() : Value(body),
    );
  }

  factory Post.fromJson(Map<String, dynamic> json,
      {ValueSerializer serializer}) {
    serializer ??= moorRuntimeOptions.defaultSerializer;
    return Post(
      id: serializer.fromJson<int>(json['id']),
      postId: serializer.fromJson<int>(json['id']),
      userId: serializer.fromJson<int>(json['userId']),
      title: serializer.fromJson<String>(json['title']),
      body: serializer.fromJson<String>(json['body']),
    );
  }
  @override
  Map<String, dynamic> toJson({ValueSerializer serializer}) {
    serializer ??= moorRuntimeOptions.defaultSerializer;
    return <String, dynamic>{
      'id': serializer.toJson<int>(id),
      'postId': serializer.toJson<int>(postId),
      'userId': serializer.toJson<int>(userId),
      'title': serializer.toJson<String>(title),
      'body': serializer.toJson<String>(body),
    };
  }

  Post copyWith({int id, int postId, int userId, String title, String body}) =>
      Post(
        id: id ?? this.id,
        postId: postId ?? this.postId,
        userId: userId ?? this.userId,
        title: title ?? this.title,
        body: body ?? this.body,
      );
  @override
  String toString() {
    return (StringBuffer('Post(')
          ..write('id: $id, ')
          ..write('postId: $postId, ')
          ..write('userId: $userId, ')
          ..write('title: $title, ')
          ..write('body: $body')
          ..write(')'))
        .toString();
  }

  @override
  int get hashCode => $mrjf($mrjc(
      id.hashCode,
      $mrjc(postId.hashCode,
          $mrjc(userId.hashCode, $mrjc(title.hashCode, body.hashCode)))));
  @override
  bool operator ==(dynamic other) =>
      identical(this, other) ||
      (other is Post &&
          other.id == this.id &&
          other.postId == this.postId &&
          other.userId == this.userId &&
          other.title == this.title &&
          other.body == this.body);
}

class PostsCompanion extends UpdateCompanion<Post> {
  final Value<int> id;
  final Value<int> postId;
  final Value<int> userId;
  final Value<String> title;
  final Value<String> body;
  const PostsCompanion({
    this.id = const Value.absent(),
    this.postId = const Value.absent(),
    this.userId = const Value.absent(),
    this.title = const Value.absent(),
    this.body = const Value.absent(),
  });
  PostsCompanion.insert({
    this.id = const Value.absent(),
    @required int postId,
    @required int userId,
    @required String title,
    @required String body,
  })  : postId = Value(postId),
        userId = Value(userId),
        title = Value(title),
        body = Value(body);
  static Insertable<Post> custom({
    Expression<int> id,
    Expression<int> postId,
    Expression<int> userId,
    Expression<String> title,
    Expression<String> body,
  }) {
    return RawValuesInsertable({
      if (id != null) 'id': id,
      if (postId != null) 'post_id': postId,
      if (userId != null) 'user_id': userId,
      if (title != null) 'title': title,
      if (body != null) 'body': body,
    });
  }

  PostsCompanion copyWith(
      {Value<int> id,
      Value<int> postId,
      Value<int> userId,
      Value<String> title,
      Value<String> body}) {
    return PostsCompanion(
      id: id ?? this.id,
      postId: postId ?? this.postId,
      userId: userId ?? this.userId,
      title: title ?? this.title,
      body: body ?? this.body,
    );
  }

  @override
  Map<String, Expression> toColumns(bool nullToAbsent) {
    final map = <String, Expression>{};
    if (id.present) {
      map['id'] = Variable<int>(id.value);
    }
    if (postId.present) {
      map['post_id'] = Variable<int>(postId.value);
    }
    if (userId.present) {
      map['user_id'] = Variable<int>(userId.value);
    }
    if (title.present) {
      map['title'] = Variable<String>(title.value);
    }
    if (body.present) {
      map['body'] = Variable<String>(body.value);
    }
    return map;
  }

  @override
  String toString() {
    return (StringBuffer('PostsCompanion(')
          ..write('id: $id, ')
          ..write('postId: $postId, ')
          ..write('userId: $userId, ')
          ..write('title: $title, ')
          ..write('body: $body')
          ..write(')'))
        .toString();
  }
}

class $PostsTable extends Posts with TableInfo<$PostsTable, Post> {
  final GeneratedDatabase _db;
  final String _alias;
  $PostsTable(this._db, [this._alias]);
  final VerificationMeta _idMeta = const VerificationMeta('id');
  GeneratedIntColumn _id;
  @override
  GeneratedIntColumn get id => _id ??= _constructId();
  GeneratedIntColumn _constructId() {
    return GeneratedIntColumn('id', $tableName, false,
        hasAutoIncrement: true, declaredAsPrimaryKey: true);
  }

  final VerificationMeta _postIdMeta = const VerificationMeta('postId');
  GeneratedIntColumn _postId;
  @override
  GeneratedIntColumn get postId => _postId ??= _constructPostId();
  GeneratedIntColumn _constructPostId() {
    return GeneratedIntColumn(
      'post_id',
      $tableName,
      false,
    );
  }

  final VerificationMeta _userIdMeta = const VerificationMeta('userId');
  GeneratedIntColumn _userId;
  @override
  GeneratedIntColumn get userId => _userId ??= _constructUserId();
  GeneratedIntColumn _constructUserId() {
    return GeneratedIntColumn(
      'user_id',
      $tableName,
      false,
    );
  }

  final VerificationMeta _titleMeta = const VerificationMeta('title');
  GeneratedTextColumn _title;
  @override
  GeneratedTextColumn get title => _title ??= _constructTitle();
  GeneratedTextColumn _constructTitle() {
    return GeneratedTextColumn('title', $tableName, false,
        minTextLength: 1, maxTextLength: 1050);
  }

  final VerificationMeta _bodyMeta = const VerificationMeta('body');
  GeneratedTextColumn _body;
  @override
  GeneratedTextColumn get body => _body ??= _constructBody();
  GeneratedTextColumn _constructBody() {
    return GeneratedTextColumn('body', $tableName, false,
        minTextLength: 1, maxTextLength: 1050);
  }

  @override
  List<GeneratedColumn> get $columns => [id, postId, userId, title, body];
  @override
  $PostsTable get asDslTable => this;
  @override
  String get $tableName => _alias ?? 'posts';
  @override
  final String actualTableName = 'posts';
  @override
  VerificationContext validateIntegrity(Insertable<Post> instance,
      {bool isInserting = false}) {
    final context = VerificationContext();
    final data = instance.toColumns(true);
    if (data.containsKey('id')) {
      context.handle(_idMeta, id.isAcceptableOrUnknown(data['id'], _idMeta));
    }
    if (data.containsKey('post_id')) {
      context.handle(_postIdMeta,
          postId.isAcceptableOrUnknown(data['post_id'], _postIdMeta));
    } else if (isInserting) {
      context.missing(_postIdMeta);
    }
    if (data.containsKey('user_id')) {
      context.handle(_userIdMeta,
          userId.isAcceptableOrUnknown(data['user_id'], _userIdMeta));
    } else if (isInserting) {
      context.missing(_userIdMeta);
    }
    if (data.containsKey('title')) {
      context.handle(
          _titleMeta, title.isAcceptableOrUnknown(data['title'], _titleMeta));
    } else if (isInserting) {
      context.missing(_titleMeta);
    }
    if (data.containsKey('body')) {
      context.handle(
          _bodyMeta, body.isAcceptableOrUnknown(data['body'], _bodyMeta));
    } else if (isInserting) {
      context.missing(_bodyMeta);
    }
    return context;
  }

  @override
  Set<GeneratedColumn> get $primaryKey => {id};
  @override
  Post map(Map<String, dynamic> data, {String tablePrefix}) {
    final effectivePrefix = tablePrefix != null ? '$tablePrefix.' : null;
    return Post.fromData(data, _db, prefix: effectivePrefix);
  }

  @override
  $PostsTable createAlias(String alias) {
    return $PostsTable(_db, alias);
  }
}

class User extends DataClass implements Insertable<User> {
  final int id;
  final String name;
  final String username;
  final String email;
  final String phone;
  final String website;
  final String street;
  final String suite;
  final String city;
  final String zipcode;
  final String lat;
  final String lng;
  final String company_name;
  final String catch_phrase;
  final String bs;
  User(
      {@required this.id,
      @required this.name,
      @required this.username,
      @required this.email,
      @required this.phone,
      @required this.website,
      @required this.street,
      @required this.suite,
      @required this.city,
      @required this.zipcode,
      @required this.lat,
      @required this.lng,
      @required this.company_name,
      @required this.catch_phrase,
      @required this.bs});
  factory User.fromData(Map<String, dynamic> data, GeneratedDatabase db,
      {String prefix}) {
    final effectivePrefix = prefix ?? '';
    final intType = db.typeSystem.forDartType<int>();
    final stringType = db.typeSystem.forDartType<String>();
    return User(
      id: intType.mapFromDatabaseResponse(data['${effectivePrefix}id']),
      name: stringType.mapFromDatabaseResponse(data['${effectivePrefix}name']),
      username: stringType
          .mapFromDatabaseResponse(data['${effectivePrefix}username']),
      email:
          stringType.mapFromDatabaseResponse(data['${effectivePrefix}email']),
      phone:
          stringType.mapFromDatabaseResponse(data['${effectivePrefix}phone']),
      website:
          stringType.mapFromDatabaseResponse(data['${effectivePrefix}website']),
      street:
          stringType.mapFromDatabaseResponse(data['${effectivePrefix}street']),
      suite:
          stringType.mapFromDatabaseResponse(data['${effectivePrefix}suite']),
      city: stringType.mapFromDatabaseResponse(data['${effectivePrefix}city']),
      zipcode:
          stringType.mapFromDatabaseResponse(data['${effectivePrefix}zipcode']),
      lat: stringType.mapFromDatabaseResponse(data['${effectivePrefix}lat']),
      lng: stringType.mapFromDatabaseResponse(data['${effectivePrefix}lng']),
      company_name: stringType
          .mapFromDatabaseResponse(data['${effectivePrefix}company_name']),
      catch_phrase: stringType
          .mapFromDatabaseResponse(data['${effectivePrefix}catch_phrase']),
      bs: stringType.mapFromDatabaseResponse(data['${effectivePrefix}bs']),
    );
  }
  @override
  Map<String, Expression> toColumns(bool nullToAbsent) {
    final map = <String, Expression>{};
    if (!nullToAbsent || id != null) {
      map['id'] = Variable<int>(id);
    }
    if (!nullToAbsent || name != null) {
      map['name'] = Variable<String>(name);
    }
    if (!nullToAbsent || username != null) {
      map['username'] = Variable<String>(username);
    }
    if (!nullToAbsent || email != null) {
      map['email'] = Variable<String>(email);
    }
    if (!nullToAbsent || phone != null) {
      map['phone'] = Variable<String>(phone);
    }
    if (!nullToAbsent || website != null) {
      map['website'] = Variable<String>(website);
    }
    if (!nullToAbsent || street != null) {
      map['street'] = Variable<String>(street);
    }
    if (!nullToAbsent || suite != null) {
      map['suite'] = Variable<String>(suite);
    }
    if (!nullToAbsent || city != null) {
      map['city'] = Variable<String>(city);
    }
    if (!nullToAbsent || zipcode != null) {
      map['zipcode'] = Variable<String>(zipcode);
    }
    if (!nullToAbsent || lat != null) {
      map['lat'] = Variable<String>(lat);
    }
    if (!nullToAbsent || lng != null) {
      map['lng'] = Variable<String>(lng);
    }
    if (!nullToAbsent || company_name != null) {
      map['company_name'] = Variable<String>(company_name);
    }
    if (!nullToAbsent || catch_phrase != null) {
      map['catch_phrase'] = Variable<String>(catch_phrase);
    }
    if (!nullToAbsent || bs != null) {
      map['bs'] = Variable<String>(bs);
    }
    return map;
  }

  UsersCompanion toCompanion(bool nullToAbsent) {
    return UsersCompanion(
      id: id == null && nullToAbsent ? const Value.absent() : Value(id),
      name: name == null && nullToAbsent ? const Value.absent() : Value(name),
      username: username == null && nullToAbsent
          ? const Value.absent()
          : Value(username),
      email:
          email == null && nullToAbsent ? const Value.absent() : Value(email),
      phone:
          phone == null && nullToAbsent ? const Value.absent() : Value(phone),
      website: website == null && nullToAbsent
          ? const Value.absent()
          : Value(website),
      street:
          street == null && nullToAbsent ? const Value.absent() : Value(street),
      suite:
          suite == null && nullToAbsent ? const Value.absent() : Value(suite),
      city: city == null && nullToAbsent ? const Value.absent() : Value(city),
      zipcode: zipcode == null && nullToAbsent
          ? const Value.absent()
          : Value(zipcode),
      lat: lat == null && nullToAbsent ? const Value.absent() : Value(lat),
      lng: lng == null && nullToAbsent ? const Value.absent() : Value(lng),
      company_name: company_name == null && nullToAbsent
          ? const Value.absent()
          : Value(company_name),
      catch_phrase: catch_phrase == null && nullToAbsent
          ? const Value.absent()
          : Value(catch_phrase),
      bs: bs == null && nullToAbsent ? const Value.absent() : Value(bs),
    );
  }

  factory User.fromJson(Map<String, dynamic> json,
      {ValueSerializer serializer}) {
    serializer ??= moorRuntimeOptions.defaultSerializer;
    return User(
      id: serializer.fromJson<int>(json['id']),
      name: serializer.fromJson<String>(json['name']),
      username: serializer.fromJson<String>(json['username']),
      email: serializer.fromJson<String>(json['email']),
      phone: serializer.fromJson<String>(json['phone']),
      website: serializer.fromJson<String>(json['website']),
      street: serializer.fromJson<String>(json['address']['street']),
      suite: serializer.fromJson<String>(json['address']['suite']),
      city: serializer.fromJson<String>(json['address']['city']),
      zipcode: serializer.fromJson<String>(json['address']['zipcode']),
      lat: serializer.fromJson<String>(json['address']['geo']['lat']),
      lng: serializer.fromJson<String>(json['address']['geo']['lng']),
      company_name: serializer.fromJson<String>(json['company']['name']),
      catch_phrase: serializer.fromJson<String>(json['company']['catchPhrase']),
      bs: serializer.fromJson<String>(json['company']['bs']),
    );
  }
  @override
  Map<String, dynamic> toJson({ValueSerializer serializer}) {
    serializer ??= moorRuntimeOptions.defaultSerializer;
    return <String, dynamic>{
      'id': serializer.toJson<int>(id),
      'name': serializer.toJson<String>(name),
      'username': serializer.toJson<String>(username),
      'email': serializer.toJson<String>(email),
      'phone': serializer.toJson<String>(phone),
      'website': serializer.toJson<String>(website),
      'street': serializer.toJson<String>(street),
      'suite': serializer.toJson<String>(suite),
      'city': serializer.toJson<String>(city),
      'zipcode': serializer.toJson<String>(zipcode),
      'lat': serializer.toJson<String>(lat),
      'lng': serializer.toJson<String>(lng),
      'company_name': serializer.toJson<String>(company_name),
      'catch_phrase': serializer.toJson<String>(catch_phrase),
      'bs': serializer.toJson<String>(bs),
    };
  }

  User copyWith(
          {int id,
          String name,
          String username,
          String email,
          String phone,
          String website,
          String street,
          String suite,
          String city,
          String zipcode,
          String lat,
          String lng,
          String company_name,
          String catch_phrase,
          String bs}) =>
      User(
        id: id ?? this.id,
        name: name ?? this.name,
        username: username ?? this.username,
        email: email ?? this.email,
        phone: phone ?? this.phone,
        website: website ?? this.website,
        street: street ?? this.street,
        suite: suite ?? this.suite,
        city: city ?? this.city,
        zipcode: zipcode ?? this.zipcode,
        lat: lat ?? this.lat,
        lng: lng ?? this.lng,
        company_name: company_name ?? this.company_name,
        catch_phrase: catch_phrase ?? this.catch_phrase,
        bs: bs ?? this.bs,
      );
  @override
  String toString() {
    return (StringBuffer('User(')
          ..write('id: $id, ')
          ..write('name: $name, ')
          ..write('username: $username, ')
          ..write('email: $email, ')
          ..write('phone: $phone, ')
          ..write('website: $website, ')
          ..write('street: $street, ')
          ..write('suite: $suite, ')
          ..write('city: $city, ')
          ..write('zipcode: $zipcode, ')
          ..write('lat: $lat, ')
          ..write('lng: $lng, ')
          ..write('company_name: $company_name, ')
          ..write('catch_phrase: $catch_phrase, ')
          ..write('bs: $bs')
          ..write(')'))
        .toString();
  }

  @override
  int get hashCode => $mrjf($mrjc(
      id.hashCode,
      $mrjc(
          name.hashCode,
          $mrjc(
              username.hashCode,
              $mrjc(
                  email.hashCode,
                  $mrjc(
                      phone.hashCode,
                      $mrjc(
                          website.hashCode,
                          $mrjc(
                              street.hashCode,
                              $mrjc(
                                  suite.hashCode,
                                  $mrjc(
                                      city.hashCode,
                                      $mrjc(
                                          zipcode.hashCode,
                                          $mrjc(
                                              lat.hashCode,
                                              $mrjc(
                                                  lng.hashCode,
                                                  $mrjc(
                                                      company_name.hashCode,
                                                      $mrjc(
                                                          catch_phrase.hashCode,
                                                          bs.hashCode)))))))))))))));
  @override
  bool operator ==(dynamic other) =>
      identical(this, other) ||
      (other is User &&
          other.id == this.id &&
          other.name == this.name &&
          other.username == this.username &&
          other.email == this.email &&
          other.phone == this.phone &&
          other.website == this.website &&
          other.street == this.street &&
          other.suite == this.suite &&
          other.city == this.city &&
          other.zipcode == this.zipcode &&
          other.lat == this.lat &&
          other.lng == this.lng &&
          other.company_name == this.company_name &&
          other.catch_phrase == this.catch_phrase &&
          other.bs == this.bs);
}

class UsersCompanion extends UpdateCompanion<User> {
  final Value<int> id;
  final Value<String> name;
  final Value<String> username;
  final Value<String> email;
  final Value<String> phone;
  final Value<String> website;
  final Value<String> street;
  final Value<String> suite;
  final Value<String> city;
  final Value<String> zipcode;
  final Value<String> lat;
  final Value<String> lng;
  final Value<String> company_name;
  final Value<String> catch_phrase;
  final Value<String> bs;
  const UsersCompanion({
    this.id = const Value.absent(),
    this.name = const Value.absent(),
    this.username = const Value.absent(),
    this.email = const Value.absent(),
    this.phone = const Value.absent(),
    this.website = const Value.absent(),
    this.street = const Value.absent(),
    this.suite = const Value.absent(),
    this.city = const Value.absent(),
    this.zipcode = const Value.absent(),
    this.lat = const Value.absent(),
    this.lng = const Value.absent(),
    this.company_name = const Value.absent(),
    this.catch_phrase = const Value.absent(),
    this.bs = const Value.absent(),
  });
  UsersCompanion.insert({
    this.id = const Value.absent(),
    @required String name,
    @required String username,
    @required String email,
    @required String phone,
    @required String website,
    @required String street,
    @required String suite,
    @required String city,
    @required String zipcode,
    @required String lat,
    @required String lng,
    @required String company_name,
    @required String catch_phrase,
    @required String bs,
  })  : name = Value(name),
        username = Value(username),
        email = Value(email),
        phone = Value(phone),
        website = Value(website),
        street = Value(street),
        suite = Value(suite),
        city = Value(city),
        zipcode = Value(zipcode),
        lat = Value(lat),
        lng = Value(lng),
        company_name = Value(company_name),
        catch_phrase = Value(catch_phrase),
        bs = Value(bs);
  static Insertable<User> custom({
    Expression<int> id,
    Expression<String> name,
    Expression<String> username,
    Expression<String> email,
    Expression<String> phone,
    Expression<String> website,
    Expression<String> street,
    Expression<String> suite,
    Expression<String> city,
    Expression<String> zipcode,
    Expression<String> lat,
    Expression<String> lng,
    Expression<String> company_name,
    Expression<String> catch_phrase,
    Expression<String> bs,
  }) {
    return RawValuesInsertable({
      if (id != null) 'id': id,
      if (name != null) 'name': name,
      if (username != null) 'username': username,
      if (email != null) 'email': email,
      if (phone != null) 'phone': phone,
      if (website != null) 'website': website,
      if (street != null) 'street': street,
      if (suite != null) 'suite': suite,
      if (city != null) 'city': city,
      if (zipcode != null) 'zipcode': zipcode,
      if (lat != null) 'lat': lat,
      if (lng != null) 'lng': lng,
      if (company_name != null) 'company_name': company_name,
      if (catch_phrase != null) 'catch_phrase': catch_phrase,
      if (bs != null) 'bs': bs,
    });
  }

  UsersCompanion copyWith(
      {Value<int> id,
      Value<String> name,
      Value<String> username,
      Value<String> email,
      Value<String> phone,
      Value<String> website,
      Value<String> street,
      Value<String> suite,
      Value<String> city,
      Value<String> zipcode,
      Value<String> lat,
      Value<String> lng,
      Value<String> company_name,
      Value<String> catch_phrase,
      Value<String> bs}) {
    return UsersCompanion(
      id: id ?? this.id,
      name: name ?? this.name,
      username: username ?? this.username,
      email: email ?? this.email,
      phone: phone ?? this.phone,
      website: website ?? this.website,
      street: street ?? this.street,
      suite: suite ?? this.suite,
      city: city ?? this.city,
      zipcode: zipcode ?? this.zipcode,
      lat: lat ?? this.lat,
      lng: lng ?? this.lng,
      company_name: company_name ?? this.company_name,
      catch_phrase: catch_phrase ?? this.catch_phrase,
      bs: bs ?? this.bs,
    );
  }

  @override
  Map<String, Expression> toColumns(bool nullToAbsent) {
    final map = <String, Expression>{};
    if (id.present) {
      map['id'] = Variable<int>(id.value);
    }
    if (name.present) {
      map['name'] = Variable<String>(name.value);
    }
    if (username.present) {
      map['username'] = Variable<String>(username.value);
    }
    if (email.present) {
      map['email'] = Variable<String>(email.value);
    }
    if (phone.present) {
      map['phone'] = Variable<String>(phone.value);
    }
    if (website.present) {
      map['website'] = Variable<String>(website.value);
    }
    if (street.present) {
      map['street'] = Variable<String>(street.value);
    }
    if (suite.present) {
      map['suite'] = Variable<String>(suite.value);
    }
    if (city.present) {
      map['city'] = Variable<String>(city.value);
    }
    if (zipcode.present) {
      map['zipcode'] = Variable<String>(zipcode.value);
    }
    if (lat.present) {
      map['lat'] = Variable<String>(lat.value);
    }
    if (lng.present) {
      map['lng'] = Variable<String>(lng.value);
    }
    if (company_name.present) {
      map['company_name'] = Variable<String>(company_name.value);
    }
    if (catch_phrase.present) {
      map['catch_phrase'] = Variable<String>(catch_phrase.value);
    }
    if (bs.present) {
      map['bs'] = Variable<String>(bs.value);
    }
    return map;
  }

  @override
  String toString() {
    return (StringBuffer('UsersCompanion(')
          ..write('id: $id, ')
          ..write('name: $name, ')
          ..write('username: $username, ')
          ..write('email: $email, ')
          ..write('phone: $phone, ')
          ..write('website: $website, ')
          ..write('street: $street, ')
          ..write('suite: $suite, ')
          ..write('city: $city, ')
          ..write('zipcode: $zipcode, ')
          ..write('lat: $lat, ')
          ..write('lng: $lng, ')
          ..write('company_name: $company_name, ')
          ..write('catch_phrase: $catch_phrase, ')
          ..write('bs: $bs')
          ..write(')'))
        .toString();
  }
}

class $UsersTable extends Users with TableInfo<$UsersTable, User> {
  final GeneratedDatabase _db;
  final String _alias;
  $UsersTable(this._db, [this._alias]);
  final VerificationMeta _idMeta = const VerificationMeta('id');
  GeneratedIntColumn _id;
  @override
  GeneratedIntColumn get id => _id ??= _constructId();
  GeneratedIntColumn _constructId() {
    return GeneratedIntColumn(
      'id',
      $tableName,
      false,
    );
  }

  final VerificationMeta _nameMeta = const VerificationMeta('name');
  GeneratedTextColumn _name;
  @override
  GeneratedTextColumn get name => _name ??= _constructName();
  GeneratedTextColumn _constructName() {
    return GeneratedTextColumn('name', $tableName, false,
        minTextLength: 1, maxTextLength: 1050);
  }

  final VerificationMeta _usernameMeta = const VerificationMeta('username');
  GeneratedTextColumn _username;
  @override
  GeneratedTextColumn get username => _username ??= _constructUsername();
  GeneratedTextColumn _constructUsername() {
    return GeneratedTextColumn('username', $tableName, false,
        minTextLength: 1, maxTextLength: 1050);
  }

  final VerificationMeta _emailMeta = const VerificationMeta('email');
  GeneratedTextColumn _email;
  @override
  GeneratedTextColumn get email => _email ??= _constructEmail();
  GeneratedTextColumn _constructEmail() {
    return GeneratedTextColumn('email', $tableName, false,
        minTextLength: 1, maxTextLength: 100);
  }

  final VerificationMeta _phoneMeta = const VerificationMeta('phone');
  GeneratedTextColumn _phone;
  @override
  GeneratedTextColumn get phone => _phone ??= _constructPhone();
  GeneratedTextColumn _constructPhone() {
    return GeneratedTextColumn('phone', $tableName, false,
        minTextLength: 1, maxTextLength: 100);
  }

  final VerificationMeta _websiteMeta = const VerificationMeta('website');
  GeneratedTextColumn _website;
  @override
  GeneratedTextColumn get website => _website ??= _constructWebsite();
  GeneratedTextColumn _constructWebsite() {
    return GeneratedTextColumn('website', $tableName, false,
        minTextLength: 1, maxTextLength: 100);
  }

  final VerificationMeta _streetMeta = const VerificationMeta('street');
  GeneratedTextColumn _street;
  @override
  GeneratedTextColumn get street => _street ??= _constructStreet();
  GeneratedTextColumn _constructStreet() {
    return GeneratedTextColumn('street', $tableName, false,
        minTextLength: 1, maxTextLength: 100);
  }

  final VerificationMeta _suiteMeta = const VerificationMeta('suite');
  GeneratedTextColumn _suite;
  @override
  GeneratedTextColumn get suite => _suite ??= _constructSuite();
  GeneratedTextColumn _constructSuite() {
    return GeneratedTextColumn('suite', $tableName, false,
        minTextLength: 1, maxTextLength: 100);
  }

  final VerificationMeta _cityMeta = const VerificationMeta('city');
  GeneratedTextColumn _city;
  @override
  GeneratedTextColumn get city => _city ??= _constructCity();
  GeneratedTextColumn _constructCity() {
    return GeneratedTextColumn('city', $tableName, false,
        minTextLength: 1, maxTextLength: 100);
  }

  final VerificationMeta _zipcodeMeta = const VerificationMeta('zipcode');
  GeneratedTextColumn _zipcode;
  @override
  GeneratedTextColumn get zipcode => _zipcode ??= _constructZipcode();
  GeneratedTextColumn _constructZipcode() {
    return GeneratedTextColumn('zipcode', $tableName, false,
        minTextLength: 1, maxTextLength: 100);
  }

  final VerificationMeta _latMeta = const VerificationMeta('lat');
  GeneratedTextColumn _lat;
  @override
  GeneratedTextColumn get lat => _lat ??= _constructLat();
  GeneratedTextColumn _constructLat() {
    return GeneratedTextColumn('lat', $tableName, false,
        minTextLength: 1, maxTextLength: 40);
  }

  final VerificationMeta _lngMeta = const VerificationMeta('lng');
  GeneratedTextColumn _lng;
  @override
  GeneratedTextColumn get lng => _lng ??= _constructLng();
  GeneratedTextColumn _constructLng() {
    return GeneratedTextColumn('lng', $tableName, false,
        minTextLength: 1, maxTextLength: 40);
  }

  final VerificationMeta _company_nameMeta =
      const VerificationMeta('company_name');
  GeneratedTextColumn _company_name;
  @override
  GeneratedTextColumn get company_name =>
      _company_name ??= _constructCompanyName();
  GeneratedTextColumn _constructCompanyName() {
    return GeneratedTextColumn('company_name', $tableName, false,
        minTextLength: 1, maxTextLength: 40);
  }

  final VerificationMeta _catch_phraseMeta =
      const VerificationMeta('catch_phrase');
  GeneratedTextColumn _catch_phrase;
  @override
  GeneratedTextColumn get catch_phrase =>
      _catch_phrase ??= _constructCatchPhrase();
  GeneratedTextColumn _constructCatchPhrase() {
    return GeneratedTextColumn('catch_phrase', $tableName, false,
        minTextLength: 1, maxTextLength: 40);
  }

  final VerificationMeta _bsMeta = const VerificationMeta('bs');
  GeneratedTextColumn _bs;
  @override
  GeneratedTextColumn get bs => _bs ??= _constructBs();
  GeneratedTextColumn _constructBs() {
    return GeneratedTextColumn('bs', $tableName, false,
        minTextLength: 1, maxTextLength: 40);
  }

  @override
  List<GeneratedColumn> get $columns => [
        id,
        name,
        username,
        email,
        phone,
        website,
        street,
        suite,
        city,
        zipcode,
        lat,
        lng,
        company_name,
        catch_phrase,
        bs
      ];
  @override
  $UsersTable get asDslTable => this;
  @override
  String get $tableName => _alias ?? 'users';
  @override
  final String actualTableName = 'users';
  @override
  VerificationContext validateIntegrity(Insertable<User> instance,
      {bool isInserting = false}) {
    final context = VerificationContext();
    final data = instance.toColumns(true);
    if (data.containsKey('id')) {
      context.handle(_idMeta, id.isAcceptableOrUnknown(data['id'], _idMeta));
    }
    if (data.containsKey('name')) {
      context.handle(
          _nameMeta, name.isAcceptableOrUnknown(data['name'], _nameMeta));
    } else if (isInserting) {
      context.missing(_nameMeta);
    }
    if (data.containsKey('username')) {
      context.handle(_usernameMeta,
          username.isAcceptableOrUnknown(data['username'], _usernameMeta));
    } else if (isInserting) {
      context.missing(_usernameMeta);
    }
    if (data.containsKey('email')) {
      context.handle(
          _emailMeta, email.isAcceptableOrUnknown(data['email'], _emailMeta));
    } else if (isInserting) {
      context.missing(_emailMeta);
    }
    if (data.containsKey('phone')) {
      context.handle(
          _phoneMeta, phone.isAcceptableOrUnknown(data['phone'], _phoneMeta));
    } else if (isInserting) {
      context.missing(_phoneMeta);
    }
    if (data.containsKey('website')) {
      context.handle(_websiteMeta,
          website.isAcceptableOrUnknown(data['website'], _websiteMeta));
    } else if (isInserting) {
      context.missing(_websiteMeta);
    }
    if (data.containsKey('street')) {
      context.handle(_streetMeta,
          street.isAcceptableOrUnknown(data['street'], _streetMeta));
    } else if (isInserting) {
      context.missing(_streetMeta);
    }
    if (data.containsKey('suite')) {
      context.handle(
          _suiteMeta, suite.isAcceptableOrUnknown(data['suite'], _suiteMeta));
    } else if (isInserting) {
      context.missing(_suiteMeta);
    }
    if (data.containsKey('city')) {
      context.handle(
          _cityMeta, city.isAcceptableOrUnknown(data['city'], _cityMeta));
    } else if (isInserting) {
      context.missing(_cityMeta);
    }
    if (data.containsKey('zipcode')) {
      context.handle(_zipcodeMeta,
          zipcode.isAcceptableOrUnknown(data['zipcode'], _zipcodeMeta));
    } else if (isInserting) {
      context.missing(_zipcodeMeta);
    }
    if (data.containsKey('lat')) {
      context.handle(
          _latMeta, lat.isAcceptableOrUnknown(data['lat'], _latMeta));
    } else if (isInserting) {
      context.missing(_latMeta);
    }
    if (data.containsKey('lng')) {
      context.handle(
          _lngMeta, lng.isAcceptableOrUnknown(data['lng'], _lngMeta));
    } else if (isInserting) {
      context.missing(_lngMeta);
    }
    if (data.containsKey('company_name')) {
      context.handle(
          _company_nameMeta,
          company_name.isAcceptableOrUnknown(
              data['company_name'], _company_nameMeta));
    } else if (isInserting) {
      context.missing(_company_nameMeta);
    }
    if (data.containsKey('catch_phrase')) {
      context.handle(
          _catch_phraseMeta,
          catch_phrase.isAcceptableOrUnknown(
              data['catch_phrase'], _catch_phraseMeta));
    } else if (isInserting) {
      context.missing(_catch_phraseMeta);
    }
    if (data.containsKey('bs')) {
      context.handle(_bsMeta, bs.isAcceptableOrUnknown(data['bs'], _bsMeta));
    } else if (isInserting) {
      context.missing(_bsMeta);
    }
    return context;
  }

  @override
  Set<GeneratedColumn> get $primaryKey => {id};
  @override
  User map(Map<String, dynamic> data, {String tablePrefix}) {
    final effectivePrefix = tablePrefix != null ? '$tablePrefix.' : null;
    return User.fromData(data, _db, prefix: effectivePrefix);
  }

  @override
  $UsersTable createAlias(String alias) {
    return $UsersTable(_db, alias);
  }
}

abstract class _$Database extends GeneratedDatabase {
  _$Database(QueryExecutor e) : super(SqlTypeSystem.defaultInstance, e);
  $PostsTable _posts;
  $PostsTable get posts => _posts ??= $PostsTable(this);
  $UsersTable _users;
  $UsersTable get users => _users ??= $UsersTable(this);
  @override
  Iterable<TableInfo> get allTables => allSchemaEntities.whereType<TableInfo>();
  @override
  List<DatabaseSchemaEntity> get allSchemaEntities => [posts, users];
}
