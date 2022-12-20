import 'package:extra_market/app/feature/order/domain/entity/order_item.dart';
import 'package:get/get.dart';

class OrderItemController extends GetxController {
  //TODO: Implement OrderItemController

  final orderItem = Rxn<OrderItem>();

  final product = Get.arguments;

  final count = 0.obs;
  @override
  void onInit() {
    super.onInit();
    orderItem.value = OrderItem(product: product, quantity: 1);
  }

  @override
  void onReady() {
    super.onReady();
  }

  @override
  void onClose() {}
  void increment() => count.value++;
}
