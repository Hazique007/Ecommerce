import 'package:ecommerce/utils/constants/colors.dart';
import 'package:flutter/material.dart';


class MyShadowStyle{
  static final verticalProductsShadow = BoxShadow(
    color: MyColors.darkGrey.withOpacity(0.1),
    blurRadius: 50,
    spreadRadius: 7,
    offset: const Offset(0, 2)
  );

  static final horizontalProductShadow = BoxShadow(
      color: MyColors.darkGrey.withOpacity(0.1),
      blurRadius: 50,
      spreadRadius: 7,
      offset: const Offset(0, 2)



  );


}