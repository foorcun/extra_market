import 'package:extra_market/app/feature/market/domain/entity/product.dart';
import 'package:flutter/material.dart';

import 'package:get/get.dart';

import '../controllers/order_item_controller.dart';

class OrderItemView extends GetView<OrderItemController> {
  @override
  Widget build(BuildContext context) {
    var product = Get.arguments as Product;
    return Scaffold(
      appBar: AppBar(
        title: Text('OrderItemView'),
        centerTitle: true,
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            SizedBox(),
            Card(
              child: Column(
                children: [
                  Placeholder(), // Product image
                  Text(product.productName!),
                  Row(
                    children: [
                      AdetWidgett(controller: controller),
                      Text(controller.orderItem.value!.price.toString())
                    ],
                  )
                ],
              ),
            ),
            ElevatedButton(
                onPressed: () {
                  print("Sepete eklendi: " + product.toString());
                },
                child: Text("Sepete Ekle")),
          ],
        ),
      ),
    );
  }
}

class AdetWidgett extends StatelessWidget {
  AdetWidgett({
    Key? key,
    required this.controller,
  }) : super(key: key);
  OrderItemController controller;

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Row(
        children: [
          Card(
            child: Text("bana bak"),
          )
        ],
      ),
    );
  }
}
