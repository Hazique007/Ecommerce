import 'package:ecommerce/firebase_options.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:flutter_native_splash/flutter_native_splash.dart';
import 'package:get/get.dart';
import 'package:get_storage/get_storage.dart';


import 'app.dart';
import 'data/reposetories/repositories.authentication/authentication_repository.dart';

Future<void> main() async {
  // Widgest Binding
  final WidgetsBinding widgetsBinding = WidgetsFlutterBinding.ensureInitialized();
  //Init Local Storage
  await GetStorage.init();

  //Await Native Splash
  FlutterNativeSplash.preserve(widgetsBinding: widgetsBinding);

  //Todo: Init Firebase $ Authentication Repository
  await Firebase.initializeApp(
    options: DefaultFirebaseOptions.currentPlatform
   //Get.put() is used to create and register a dependency that can be accessed elsewhere in the app.

  ).then((FirebaseApp value) => Get.put(AuthenticationRepository()));



  //Todo: Init Authentication

  runApp(const MyApp());
}



