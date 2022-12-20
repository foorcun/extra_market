import 'package:get/get.dart';

import '../controllers/temp_home_controller.dart';

class TempHomeBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<TempHomeController>(
      () => TempHomeController(),
    );
  }
}
