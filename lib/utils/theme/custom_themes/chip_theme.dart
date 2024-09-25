import 'package:flutter/material.dart';


class MyChipTheme {
  MyChipTheme._();

  static final LightThemeChipTheme = ChipThemeData(
      disabledColor: Colors.grey.withOpacity(0.4),
    labelStyle: const TextStyle(color: Colors.black),
    selectedColor: Colors.blue,
    padding: const EdgeInsets.symmetric(horizontal: 12,vertical: 12),
    checkmarkColor: Colors.white
      );

  static final DarkThemeChipTheme = ChipThemeData(
      disabledColor: Colors.grey.withOpacity(0.4),
      labelStyle: const TextStyle(color: Colors.black),
      selectedColor: Colors.blue,
      padding: const EdgeInsets.symmetric(horizontal: 12,vertical: 12),
      checkmarkColor: Colors.white
  );


}