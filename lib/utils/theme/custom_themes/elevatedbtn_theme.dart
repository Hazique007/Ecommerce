import 'package:flutter/material.dart';

import '../../constants/colors.dart';
import '../../constants/sizes.dart';


class MyElevatedBtnTheme{
  MyElevatedBtnTheme._();

  static final LightElevatedButtonTheme =ElevatedButtonThemeData(
    style: ElevatedButton.styleFrom(
      elevation: 0,
      foregroundColor: MyColors.light,
      backgroundColor: MyColors.primary,
      disabledForegroundColor: MyColors.darkGrey,
      disabledBackgroundColor: MyColors.buttonDisabled,
      side: const BorderSide(color: MyColors.primary),
      padding: const EdgeInsets.symmetric(vertical: MySize.buttonHeight),
      textStyle: const TextStyle(fontSize: 16, color: MyColors.textWhite, fontWeight: FontWeight.w600),
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(MySize.buttonRadius)),
    ),
  );


  static final DarkElevatedButtonTheme =ElevatedButtonThemeData(
    style: ElevatedButton.styleFrom(
      elevation: 0,
      foregroundColor: MyColors.light,
      backgroundColor: MyColors.primary,
      disabledForegroundColor: MyColors.darkGrey,
      disabledBackgroundColor: MyColors.darkerGrey,
      side: const BorderSide(color: MyColors.primary),
      padding: const EdgeInsets.symmetric(vertical: MySize.buttonHeight),
      textStyle: const TextStyle(fontSize: 16, color: MyColors.textWhite, fontWeight: FontWeight.w600),
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(MySize.buttonRadius)),
    ),

  );





}