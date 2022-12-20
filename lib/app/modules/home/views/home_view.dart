import 'package:flutter/material.dart';

import 'package:get/get.dart';

import '../controllers/home_controller.dart';

class HomeView extends GetView<HomeController> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('HomeView'),
        centerTitle: true,
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Container(
              width: MediaQuery.of(context).size.width,
              child: Image.asset(
                'assets/images/extra_market.png',
                height: MediaQuery.of(context).size.width / 2,
                fit: BoxFit.fill,
              ),
            ),
            // Text(controller.getPhotoUrl().toString()),
            CircleAvatar(
              radius: 40,
              backgroundImage: NetworkImage(controller.getPhotoUrl()!),
            ),
            Text(
              // controller.name == null ? "bu null true" : "bu null false",
              // Get.find<GoogleSignInService>().myUser.value?.displayName ??
              controller.getDisplayName() ?? "isim alinamadi",
              style: const TextStyle(fontSize: 20),
            ),
            ElevatedButton(
              child: const Text("Logout"),
              onPressed: () {
                controller.logout();
              },
            )
          ],
        ),
      ),
    );
  }
}
