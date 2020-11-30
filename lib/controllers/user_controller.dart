import 'package:get/state_manager.dart';
import 'package:task/models/moor_database.dart';
import 'package:task/services/remote_services.dart';
import 'package:task/service_locator.dart';

class UserController extends GetxController {
  final postId;

  UserController({this.postId});

  // post
  var post = Post(id: 1, postId: 1, userId: 1, title: 'empty', body: 'empty').obs;

  //user
  var userview = User(
          id: 1,
          name: 'empty',
          username: 'empty',
          email: 'empty',
          phone: 'empty',
          website: 'empty',
          street: 'empty',
          suite: 'empty',
          city: 'empty',
          zipcode: 'empty',
          lat: 'empty',
          lng: 'empty',
          company_name: 'empty',
          catch_phrase: 'empty',
          bs: 'empty')
      .obs;

  //loading
  var isLoading = true.obs;

  @override
  void onInit() async {
    await showPostFromBase(postId);
    await showUserFromBase(post.value.userId);
    await updatePostPage(postId);
    super.onInit();
  }

  void showUserFromBase(int id) async {
    var userdata = await getIt<Database>().getUser(id);
    if (userdata != null) {
      userview.value = userdata;
    }
  }

  void showPostFromBase(int id) async {
    try {
      isLoading(true);
      var postInfo = await getIt<Database>().getPost(id);
      if (postInfo != null) {
        post.value = postInfo;
      }
    } finally {
      isLoading(false);
    }
  }

  void updateUserFromApi(int id) async {
    try {
      isLoading(true);
      var user = await RemoteServices.fetchUser(id);
      if (user != null) {
        userview.value = user;
        print(user);
      }
    } finally {
      isLoading(false);
    }
  }

  void getPostFromApi(int id) async {
    var postapi = await RemoteServices.fetchPost(id);
    (postapi != null) ? post.value = postapi : print('error get post');
    print(post.value);
  }

  void savePost() async {
    var statusPost = await getIt<Database>().updatePost(post.value);
    if (statusPost != false) {
      print('post saved');
    }

    var statusUser = await getIt<Database>().updateUser(userview.value);

    if (statusUser == false) {
      await getIt<Database>().insertUser(userview.value);
      print('user inserted');
    } else {
      print('user updated');
    }
  }

  void updatePostPage(int postId) async {
    // get data post from api
    await getPostFromApi(postId);

    // get data user from api
    await updateUserFromApi(post.value.userId);

    //save post&user to base
    await savePost();

    print('PostPage Updated');
  }
}
