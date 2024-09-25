import 'package:ecommerce/utils/constants/colors.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:iconsax/iconsax.dart';


class MyLoaders{
  
  static warningSnackBar({required title,message=''}){
    Get.snackbar(
      title,
      message,
      isDismissible: true,
      shouldIconPulse: true,
      colorText: Colors.white,
      backgroundColor: Colors.orange,
      snackPosition: SnackPosition.BOTTOM,
      duration: Duration(seconds: 3),
      margin: EdgeInsets.all(20),
      icon: Icon(Iconsax.warning_2,color: Colors.white,)
      
      
      
    );
    
    
  }

  static errorSnakBar({required title,message=''}){
    Get.snackbar(
      title,
      message,
        isDismissible: true,
        shouldIconPulse: true,
        colorText: Colors.white,
        backgroundColor: Colors.red.shade600,
        snackPosition: SnackPosition.BOTTOM,
        duration: Duration(seconds: 3),
        margin: EdgeInsets.all(20),
        icon: Icon(Iconsax.warning_2,color: Colors.white,)


    );


  }



  static successSnackBar({required title,message='',duration=3}){
    Get.snackbar(
        title,
        message,
        isDismissible: true,
        shouldIconPulse: true,
        colorText: Colors.white,
        backgroundColor: MyColors.primary,
        snackPosition: SnackPosition.BOTTOM,
        margin: EdgeInsets.all(20),
        icon: Icon(Iconsax.check,color: Colors.white,)


    );


  }
  
}