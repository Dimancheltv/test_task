import 'package:get/state_manager.dart';
import 'package:task/models/moor_database.dart';
import 'package:task/services/remote_services.dart';
import 'package:task/service_locator.dart';

class PostController extends GetxController {
  // loading indicator
  var isLoading = true.obs;

  // network indicator
  var errorNetwork = false.obs;

  // list of Posts
  var postList = List<Post>().obs;

  var database = getIt<Database>();

  @override
  void onInit() {
    displayPostFromBase();
    updatePostFromApi();
    super.onInit();
  }

  void displayPostFromBase() async {
    var tasksList = await database.getAllPosts();
    if (tasksList != null) {
      postList.assignAll(tasksList);
    } else {
      print('Empty');
    }
  }

  Future<void> updatePostFromApi() async {
    try {
      isLoading(true);
      var posts = await RemoteServices.fetchPosts();
      if (posts != null) {
        errorNetwork(false);
        postList.assignAll(posts);
        addPostsToBase(posts);
      } else {
        print('error network');
        errorNetwork(true);
      }
    } finally {
      isLoading(false);
    }
  }

  void addPostsToBase(List<Post> taskList) async {
    for (var post in taskList) {
      var statusUpdate = await database.updatePost(post);
      if (statusUpdate == false) {
        var statusInsert = await database.insertPost(post);
        if (statusInsert != false) {
          print('Post inserted: ' + post.id.toString());
        }
      } else {
        print('Post updated: ' + post.id.toString());
      }
    }
  }
}
