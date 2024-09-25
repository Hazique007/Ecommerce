import 'package:ecommerce/utils/theme/custom_themes/appbar_theme.dart';
import 'package:ecommerce/utils/theme/custom_themes/bottomsheet_theme.dart';
import 'package:ecommerce/utils/theme/custom_themes/checkbox_theme.dart';
import 'package:ecommerce/utils/theme/custom_themes/chip_theme.dart';
import 'package:ecommerce/utils/theme/custom_themes/elevatedbtn_theme.dart';
import 'package:ecommerce/utils/theme/custom_themes/outlinebtn_theme.dart';
import 'package:ecommerce/utils/theme/custom_themes/text_theme.dart';
import 'package:ecommerce/utils/theme/custom_themes/textfield_theme.dart';
import 'package:flutter/material.dart';

class AppTheme{
  AppTheme._();//to make it private

  static ThemeData lightTheme=ThemeData(
    useMaterial3: true,
    fontFamily: 'Poppins',
    brightness: Brightness.light,
    primaryColor: Colors.blue,
    scaffoldBackgroundColor: Colors.white,
    textTheme: MyTextTheme.LightTextTheme,
    elevatedButtonTheme: MyElevatedBtnTheme.LightElevatedButtonTheme,
    appBarTheme: MyAppBarTheme.LightAppBarTheme,
    bottomSheetTheme:MyBottomSheetTheme.LightBottomSheetTheme,
    checkboxTheme:MyCheckBoxTheme.LightThemeCheckBoxTheme,
    chipTheme:MyChipTheme.LightThemeChipTheme,
    inputDecorationTheme:MyTextFieldTheme.lightInputDecorationTheme,
    outlinedButtonTheme:MyOutlinebtnTheme.LightThemeOutlineBtnTheme





  );
  static ThemeData darkTheme=ThemeData(

      useMaterial3: true,
      fontFamily: 'Poppins',
      brightness: Brightness.dark,
      primaryColor: Colors.blue,
      scaffoldBackgroundColor: Colors.black,
      textTheme: MyTextTheme.DarkTextTheme,
      elevatedButtonTheme: MyElevatedBtnTheme.DarkElevatedButtonTheme,
      appBarTheme: MyAppBarTheme.DarkAppBarTheme,
      bottomSheetTheme:MyBottomSheetTheme.DarkBottomSheetTheme,
      checkboxTheme:MyCheckBoxTheme.DarkThemeCheckBoxTheme,
    chipTheme: MyChipTheme.DarkThemeChipTheme,
      outlinedButtonTheme:MyOutlinebtnTheme.DarkThemeOutlineBtnTheme,
    inputDecorationTheme:MyTextFieldTheme.darkInputDecorationTheme,





  );


}