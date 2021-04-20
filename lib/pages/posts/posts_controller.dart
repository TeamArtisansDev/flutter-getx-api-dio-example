import 'package:get/get.dart';
import 'package:getx_app/pages/posts/models/post.dart';
import 'package:getx_app/pages/posts/posts_provider.dart';

class PostsController extends GetxController {
  List<Post> postsList = [];
  bool isLoading = true;
  @override
  void onInit() {
    PostsProvider().getPostsList(
      onSuccess: (posts) {
        postsList.addAll(posts);
        isLoading = false;
        update();
      },
      onError: (error) {
        isLoading = false;
        update();
        print("Error");
      },
    );
    super.onInit();
  }
}
