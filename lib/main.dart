import 'package:extra_market/app/getx_service/google_sign_in_service.dart';
import 'package:flutter/material.dart';

import 'package:get/get.dart';

import 'app/routes/app_pages.dart';

import 'package:firebase_core/firebase_core.dart';
import 'firebase_options.dart';

// flutter run -d chrome --web-hostname localhost --web-port 5000 --no-sound-null-safety
void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp(
    options: DefaultFirebaseOptions.currentPlatform,
  );

  await initServices();

  runApp(
    GetMaterialApp(
      title: "Application",
      initialRoute: AppPages.INITIAL,
      getPages: AppPages.routes,
    ),
  );
}

Future<void> initServices() async {
  print("starting Services...");
  await Get.putAsync<GoogleSignInService>(
      () async => await GoogleSignInService());
  print("All services started...");
}
