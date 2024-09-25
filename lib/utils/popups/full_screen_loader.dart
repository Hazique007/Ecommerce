import 'package:ecommerce/common/widgets/loaders/animation_loader.dart';
import 'package:ecommerce/utils/constants/colors.dart';
import 'package:ecommerce/utils/helpers/helper_functions.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';



class TFullScreenLoader{


  static void openLoadingDialog(String text,String animation){
    showDialog(context: Get.overlayContext!,
        barrierDismissible: false,
        builder: (_)=> PopScope(
          canPop: false,
            child: Container(
          color: THelperFunctions.isDarkMode(Get.context!) ? MyColors.dark : Colors.white,
              width: double.infinity,
              height: double.infinity,
              child: Column(
                children: [
                  SizedBox(height: 250,),
                  AnimationLoader(text: text, animation: animation)


                ],
              ),

        )));


  }
  //--- Stop the currently open laoding dialog
  //-- This method doesn return anything

  static stopLoading(){
    Navigator.of(Get.overlayContext!).pop();

  }




}