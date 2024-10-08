import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:ecommerce/utils/exceptions/firebase_exceptions.dart';
import 'package:ecommerce/utils/exceptions/format_exceptions.dart';
import 'package:ecommerce/utils/exceptions/platform_exceptions.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:get/get.dart';

import '../../../features/personalization/models/user_model.dart';



class UserRepository extends GetxController{

  static UserRepository get instance => Get.find();

  final FirebaseFirestore  _db = FirebaseFirestore.instance;

  //--Function to save userdata to Firestore

Future<void> saveUserrecord(UserModel user) async{
  try{
    await _db.collection("Users").doc(user.id).set(user.toJson());

  } on FirebaseException catch(e){
    throw TFirebaseException(e.code).message;
  } on FormatException catch(_){
    throw TFormatException();
  }on PlatformException catch(e){
    throw TPlatformException(e.code).message;
  } catch (e){
    throw ' Something went wrong. Please try again';
  }


}



}