import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';

import '../../../utils/formatters/formatters.dart';


class UserModel{

  final String id;
  String firstname;
  String lastname;
  final String username;
  final String email;
  String phoneNumber;
  String profilePicture;



 UserModel({

    required this.id,
   required this.firstname,
   required this.lastname,
   required this.email,
   required this.phoneNumber,
   required this.profilePicture,
   required this.username,

 });

 //---Helper function to get the full name.

String get fullName => '$firstname $lastname';

//--Helper function to format phone Number

String get formattedPhoneno => TFormatter.formatPhoneNumber(phoneNumber);

//--Static function to split full name into first and last name

static List<String> nameParts(fullname) =>fullname.split(" ");

//--Static funtion to genrate a username from the full name .

static String generateUsername(fullname){

  List<String> nameParts = fullname.split(" ");
  String firstName = nameParts[0].toLowerCase();
  String lastName = nameParts .length >1 ? nameParts [1].toLowerCase() : "";
  String camelCaseUSername = "$firstName$lastName";//Combine both
  String usernameWithPrefix = "cwt_$camelCaseUSername" ;// Add"cwt_" prefix
  return usernameWithPrefix;

}

//--Static function to create an empty usermodel

static UserModel empty() => UserModel(
    id: '',
    firstname:'',
    lastname: '',
    email: '',
    phoneNumber: '',
    profilePicture: '',
    username: '');

//--Convert model to JSON for storing data in Firebase
Map<String,dynamic> toJson(){
  return{
    'Firstname' : firstname,
    'Lastname' : lastname,
    'Email' : email,
    'PhoneNumeber' : phoneNumber,
    'ProfilePicture' : profilePicture,
    'Username' : username,




  };


}

//--Factory mehod to crate a USermodal from a Firebase doc snapshot



factory UserModel.fromSnapshot(DocumentSnapshot <Map<String,dynamic>> document){
  if(document.data() != null){
    final data = document.data()!;
    return UserModel(
        id: document.id,
        firstname: data['FirstName'] ?? '',
        lastname: data['LastName'] ?? '',
        email: data['Email'] ?? '',
        phoneNumber: data['PhoneNumeber'] ?? '',
        profilePicture: data['ProfilePicture'] ?? '',
        username: data['Username'] ?? ''
    );
  }else{
    throw Exception('Document data is null');
  }






}



  }





