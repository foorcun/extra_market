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
            // Text(controller.getPhotoUrl().toString()),
            controller.getPhotoUrl() != null
                ? CircleAvatar(
                    radius: 40,
                    backgroundImage: NetworkImage(controller.getPhotoUrl()!),
                  )
                : CircularProgressIndicator(),
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
