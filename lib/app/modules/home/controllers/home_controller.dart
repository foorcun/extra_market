import 'package:extra_market/app/getx_service/google_sign_in_service.dart';
import 'package:extra_market/app/routes/app_pages.dart';
import 'package:get/get.dart';

class HomeController extends GetxController {
  //TODO: Implement HomeController

  var googleServiceController = Get.find<GoogleSignInService>();

  final count = 0.obs;
  @override
  void onInit() {
    super.onInit();
  }

  @override
  void onReady() {
    super.onReady();
  }

  @override
  void onClose() {}
  void increment() => count.value++;

  String getDisplayName() {
    return googleServiceController.myUser.value!.displayName!;
  }

  String? getPhotoUrl() {
    return googleServiceController.myUser.value!.photoURL;
  }

  logout() async {
    // getStorge.erase();
    googleServiceController.logout();

    Get.offAllNamed(Routes.LOGIN);
  }
}
