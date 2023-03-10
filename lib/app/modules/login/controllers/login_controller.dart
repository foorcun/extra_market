import 'package:extra_market/app/feature/market/domain/entity/product.dart';
import 'package:extra_market/app/feature/market/domain/repositories/i_product_repository.dart';
import 'package:extra_market/app/feature/market/infrastructure/repositories/product_repository.dart';
import 'package:extra_market/app/getx_service/google_sign_in_service.dart';
import 'package:extra_market/app/routes/app_pages.dart';
import 'package:get/get.dart';

class LoginController extends GetxController {
  //TODO: Implement LoginController

  final productList = <Product>[].obs;
  final filteredProductList = <Product>[].obs;

  // final productRepository = ProductRepository();
  final productRepository = Get.find<IProductRepository>();

  var googleServiceController = Get.find<GoogleSignInService>();
  final count = 0.obs;
  @override
  void onInit() {
    super.onInit();

    productList.bindStream(productRepository.productList());
    filteredProductList.value = productList;
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

  void filterProduct(String productName) {
    List<Product> result = [];
    if (productName.isEmpty) {
      result = productList;
    } else {
      result = productList
          .where(((element) => element.productName
              .toString()
              .toLowerCase()
              .contains(productName.toLowerCase())))
          .toList();
    }
    filteredProductList.value = result;
  }
}
