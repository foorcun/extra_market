import 'package:extra_market/app/getx_service/google_sign_in_service.dart';
import 'package:extra_market/app/routes/app_pages.dart';
import 'package:get/get.dart';

class SplashController extends GetxController {
  //TODO: Implement SplashController

  final count = 0.obs;
  @override
  void onInit() {
    super.onInit();
  }

  @override
  void onReady() {
    super.onReady();

    Get.find<GoogleSignInService>()
        .yonlendirme(homePath: Routes.HOME, loginPath: Routes.LOGIN);
  }

  @override
  void onClose() {}
  void increment() => count.value++;
}
