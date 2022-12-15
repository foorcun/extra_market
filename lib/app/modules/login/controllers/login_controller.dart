import 'package:extra_market/app/getx_service/google_sign_in_service.dart';
import 'package:extra_market/app/routes/app_pages.dart';
import 'package:get/get.dart';

class LoginController extends GetxController {
  //TODO: Implement LoginController

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

  // login() {
  login() async {
    await googleServiceController.login(homePath: Routes.HOME);
    // Get.offAllNamed(Routes.HOME);

    // var _user = googleServiceController.getUser();

    // //
    // // getStorge.write("id", 1);
    // getStorge.write("id", _user!.id);
    // // getStorge.write("name", "Ripples Code");
    // getStorge.write("name", _user.displayName);
    // getStorge.write("photourl", _user.photoUrl);
    // getStorge.write("email", _user.email);

    // Get.offAllNamed(Routes.HOME);
    // Get.offAllNamed(Routes.HOME_FOR_FIREUSER);
  }
}
