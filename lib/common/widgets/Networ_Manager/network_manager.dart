import 'dart:async';

import 'package:connectivity_plus/connectivity_plus.dart';
import 'package:ecommerce/utils/popups/loaders.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:get/get.dart';

//--Manges the network connectivity status and provides a mehtod yo check and handle connectivity changes
class NetworkManager extends GetxController{
  static NetworkManager get instance => Get.find();

  final Connectivity _connectivity = Connectivity();
  late StreamSubscription<ConnectivityResult> _connectivitySubscription;
  final Rx<ConnectivityResult> _connectionStatus=ConnectivityResult.none.obs;



  //---Initialize the network manager and set up a stream to continually check conenction status.
@override
  void onInit() {
  super.onInit();
  _connectivitySubscription =
      _connectivity.onConnectivityChanged.listen(_updateConnectionStatus);
}

//-Update the connection based on cahnges in connectivity and show relevant popups

  Future<void> _updateConnectionStatus( ConnectivityResult result)async{
    _connectionStatus.value=result;
    if(_connectionStatus.value == ConnectivityResult.none){
      MyLoaders.warningSnackBar(title: 'No Internet Connection');

    }
  }





  //--Check the internet connection result

  Future<bool> isConnected()async{
    try{
      final result=await _connectivity.checkConnectivity();
      if(result == ConnectivityResult.none){
        return false;

      } else{
        return true;
      }
    } on PlatformException catch(_){
      return false;
    }
  }

  //---Dispose or close the stream

  @override
  void onClose(){
    super.onClose();
    _connectivitySubscription.cancel();

  }

  }

