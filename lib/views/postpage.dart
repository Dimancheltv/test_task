import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:task/controllers/postlist_controller.dart';
import 'package:task/controllers/user_controller.dart';

class PostPage extends StatelessWidget {
  final postId;

  PostPage(this.postId);

  final PostController postController = Get.find();

  @override
  Widget build(BuildContext context) {
    final UserController userController = Get.put(UserController(postId: postId));
    Future<void> _refresh() async {
      await userController.updatePostPage(postId);
    }

    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0,
        leading: IconButton(
            icon: Icon(
              Icons.arrow_back,
              color: Colors.black,
            ),
            onPressed: () {
              Get.back();
            }),
      ),
      body: Obx(() {
        return Column(
          children: [
            Padding(
              padding: const EdgeInsets.all(16),
              child: Row(
                children: [
                  Expanded(
                    child: Text(
                      userController.post.value.title,
                      style: TextStyle(
                          fontFamily: 'avenir',
                          fontSize: 32,
                          fontWeight: FontWeight.w900),
                    ),
                  ),
                ],
              ),
            ),
            Expanded(
              child: RefreshIndicator(
                child: ListView(
                  padding: const EdgeInsets.all(8),
                  children: <Widget>[
                    Container(
                      child: Text(userController.post.value.body),
                    ),
                    Card(
                      child: ListTile(
                        onTap: () {},
                        title:
                            Text('Name ' + userController.userview.value.name),
                        subtitle: Text(
                            'Email ' + userController.userview.value.email),
                        leading: CircleAvatar(
                          backgroundColor: Colors.amber,
                          child: Icon(Icons.person_outline),
                        ),
                      ),
                    ),
                    Card(
                      child: ListTile(
                        onTap: () {},
                        title:
                            Text('City ' + userController.userview.value.city),
                        subtitle: Text('Street ' +
                            userController.userview.value.street +
                            userController.userview.value.suite),
                        leading: CircleAvatar(
                          backgroundColor: Colors.green,
                          child: Icon(Icons.home),
                        ),
                      ),
                    ),
                    Card(
                      child: ListTile(
                        onTap: () {},
                        title: Text(
                            'Phone ' + userController.userview.value.phone),
                        subtitle: Text('Website ' +
                            userController.userview.value.street +
                            userController.userview.value.website),
                        leading: CircleAvatar(
                          backgroundColor: Colors.deepOrangeAccent,
                          child: Icon(Icons.phone),
                        ),
                      ),
                    ),
                    Card(
                      child: ListTile(
                        onTap: () {},
                        title: Text('Company ' +
                            userController.userview.value.company_name),
                        subtitle: Text('Business ' +
                            userController.userview.value.street +
                            userController.userview.value.bs),
                        leading: CircleAvatar(
                          backgroundColor: Colors.greenAccent,
                          child: Icon(Icons.monetization_on),
                        ),
                      ),
                    ),
                  ],
                ),
                onRefresh: _refresh,
              ),
            ),
          ],
        );
      }),
    );
  }
}
