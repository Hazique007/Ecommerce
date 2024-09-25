import 'package:flutter/cupertino.dart';
import 'package:flutter/foundation.dart';
import 'package:get/get.dart';
import 'package:get_storage/get_storage.dart';

import '../../screens/login/login.dart';

class OnboardingControllers extends GetxController{

  static OnboardingControllers get insatnce => Get.find();



  //variables

  final pagecontroller = PageController();
  Rx<int> currentPageIndex = 0.obs;

  //Update Current Index when page scroll

  void UpdatePageIndicator(index) => currentPageIndex.value = index;


  //Jump to the specific dot selected page
  void dotNavigationClick(index){
   currentPageIndex.value = index ;
   pagecontroller.jumpTo(index);
  }


  //Update Current Index & jump to next page
  void nextpage(){
   if(currentPageIndex.value==2){
     final storage = GetStorage();
     if(kDebugMode){

       print('=========================== GET STORAGE LAST BUTTON======================');
       print(storage.read('isFirstTime'));
     }
     storage.write('isFirstTime', false);
     Get.to(const LoginPage());
   }else{
     int page = currentPageIndex.value+1;
     pagecontroller.jumpToPage(page);
   }


  }


  //Update Current Index & Jump to the last page

  void skipPage(){
    currentPageIndex.value=2;
    pagecontroller.jumpToPage(2);
  }


}