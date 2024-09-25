

import 'package:ecommerce/data/reposetories/repositories.authentication/authentication_repository.dart';
import 'package:ecommerce/data/reposetories/user/user_repository.dart';
import 'package:ecommerce/features/authentication/screens/signup/verify_email.dart';
import 'package:ecommerce/features/personalization/models/user_model.dart';
import 'package:ecommerce/utils/popups/full_screen_loader.dart';
import 'package:ecommerce/utils/popups/loaders.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../../../common/widgets/Networ_Manager/network_manager.dart';
import '../../../../utils/constants/image_strings.dart';

class SignupController extends GetxController {
  static SignupController get instance => Get.find();

  //Variables
  final hidePassword = true.obs;
  final privacyPolicy = false.obs;
  final email = TextEditingController();
  final lastname = TextEditingController();
  final username = TextEditingController();
  final password = TextEditingController();
  final firstname = TextEditingController();
  final phonenumber = TextEditingController();

  GlobalKey<FormState> signupFormKey = GlobalKey<FormState>();

//Signup

  void signup() async {
    try {
      //Start loading
      TFullScreenLoader.openLoadingDialog(
          'We are processing your information...',
          ImagesStrings.docerAnimation);

      //Check internet connectivity
      final isConnected = await NetworkManager.instance.isConnected();
      if (!isConnected) return;

      //Form Validation
      if (!signupFormKey.currentState!.validate()) return;

      //Privacy Policy
      if (!privacyPolicy.value) {
        MyLoaders.warningSnackBar(
            title: 'Accept Privacy Policy',
            message:
                'In order to create account, you must read and accept the Privacy Policy');
        return;
      }

      //Register and save in firebase
       final userCredential = await  AuthenticationRepository.instance.registerwithEmailandPassword(email.text.trim(), password.text.trim());


      //Save Authenticatrd data in Firebase Firestore
      final Newuser = UserModel(
          id: userCredential.user!.uid,
          firstname: firstname.text.trim(),
          lastname: lastname.text.trim(),
          email: email.text.trim(),
          phoneNumber: phonenumber.text.trim(),
          profilePicture: '',
          username: username.text.trim());

      final userRepositiory = Get.put(UserRepository());


      await userRepositiory.saveUserrecord(Newuser);


      TFullScreenLoader.stopLoading();








      //Show Success Message
      MyLoaders.successSnackBar(title: 'Congratulations',message: 'Your account has been created! Verify email to continue');


      //Move to verify Email Screen
      Get.to(()=>VerifyEmail(email: email.text.trim(),));

      print("User registered successfully: ${userCredential.user!.uid}");

      print("Navigating to VerifyEmail screen...");



    } catch (e) {
      //Show some Generic error to user
      MyLoaders.errorSnakBar(title: 'Oh Snap!', message: e.toString());
    } finally {
      //Remove loader
      TFullScreenLoader.stopLoading();
    }
  }
}
