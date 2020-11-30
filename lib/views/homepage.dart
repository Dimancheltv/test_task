import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:task/controllers/postlist_controller.dart';
import 'package:task/views/postpage.dart';

class HomePage extends StatelessWidget {
  final PostController postController = Get.put(PostController());

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0,
        leading: Icon(
          Icons.home,
          color: Colors.black,
        ),
      ),
      body: Column(
        children: [
          Padding(
            padding: const EdgeInsets.all(16),
            child: Row(
              children: [
                Expanded(
                  child: Column(
                    children: [
                      Text(
                        'Post List',
                        style: TextStyle(
                            fontFamily: 'avenir',
                            fontSize: 32,
                            fontWeight: FontWeight.w900),
                      ),
                      Obx(() {
                        if(postController.errorNetwork.value == true) {
                          return Text('offline');
                        } else {
                          return Text('online');
                        }
                      }),
                    ],
                  ),
                ),
              ],
            ),
          ),
          Expanded(
            child: Obx(() {
              if (postController.isLoading.value)
                return Center(child: CircularProgressIndicator());
              else
                return RefreshIndicator(
                  child: ListView.builder(
                    itemCount: postController.postList.length,
                    itemBuilder: (context, index) {
                      return Padding(
                        padding: EdgeInsets.all(8),
                        child: Card(
                          child: ListTile(
                            onTap: () {
                              Get.to(PostPage(postController.postList[index].postId));
                            },
                            title: Text(postController.postList[index].title),
                            leading: CircleAvatar(
                              backgroundColor: Colors.amber,
                              child: Icon(Icons.post_add_rounded),
                            ),
                          ),
                        ),
                      );
                    },
                  ),
                  onRefresh: postController.updatePostFromApi,
                );
            }),
          )
        ],
      ),
    );
  }
}
