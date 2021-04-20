import 'package:get/get.dart';
import 'package:getx_app/pages/home/home_provider.dart';

class HomeController extends GetxController {
  void getBasket() {
    HomeProvider().getBasket(
      onSuccess: (posts) {
        print(posts);
        update();
      },
      onError: (error) {
        print(error);
        update();
        print("Error");
      },
    );
  }
}
