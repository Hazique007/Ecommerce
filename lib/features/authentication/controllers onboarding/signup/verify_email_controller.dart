import 'dart:async';

import 'package:ecommerce/common/widgets/image_text_widget/vertical_image_text.dart';
import 'package:ecommerce/common/widgets/success_screen/success_screen.dart';
import 'package:ecommerce/data/reposetories/repositories.authentication/authentication_repository.dart';
import 'package:ecommerce/utils/constants/image_strings.dart';
import 'package:ecommerce/utils/constants/texts_strings.dart';
import 'package:ecommerce/utils/popups/loaders.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:get/get.dart';


class VerifyEmailController extends GetxController{

  static VerifyEmailController get instance => Get.find();



  //Send  Email whenebr Verify Scereenn appears and seat the ti,e for auto redirect
  @override
  void onInit() {
    sendEmailVErification();
    setTimerforAutoredirect();

    super.onInit();
  }


  //-- Send Email Verification Link
  sendEmailVErification()async{
    try{
      await AuthenticationRepository.instance.sendEmailVErification();
      MyLoaders.successSnackBar(title: 'Email sent',message: 'Please check your inbox and verify your email');
    } catch (e){
      MyLoaders.errorSnakBar(title: 'Oh Snap',message: e.toString());
    }


  }



///--Timer to automatically redirect on Email Verification

  setTimerforAutoredirect(){
    Timer.periodic(Duration(seconds: 1), (timer) async{
    await FirebaseAuth.instance.currentUser?.reload();
    final user =FirebaseAuth.instance.currentUser;
    if(user?.emailVerified ?? false){
      timer.cancel();
      Get.off(()=>SuccessScreen(
          image: ImagesStrings.banner5,
          title: MyTexts.yourAccountCreatedTitle,
          subtitle: MyTexts.yourAccountCreatedSubTitle,
          onPressed: ()=> AuthenticationRepository.instance.screenRedirect));
    }

    });

  }





//----Manually Check if email is Verified
checkEmailverificationStatus() async{
    final currentsuer = FirebaseAuth.instance.currentUser;
    if( currentsuer != null && currentsuer.emailVerified){
     Get.off(()=>SuccessScreen(
         image: ImagesStrings.banner3,
         title: MyTexts.yourAccountCreatedTitle,
         subtitle: MyTexts.yourAccountCreatedSubTitle,
         onPressed: ()=> AuthenticationRepository.instance.screenRedirect()));

    }


}





}