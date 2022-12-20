import 'package:extra_market/app/feature/market/domain/entity/product.dart';
import 'package:extra_market/app/feature/market/domain/repositories/i_product_repository.dart';
import 'package:extra_market/app/getx_service/google_sign_in_service.dart';
import 'package:get/get.dart';

class TempHomeController extends GetxController {
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
