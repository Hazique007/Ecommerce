import 'package:ecommerce/utils/constants/sizes.dart';
import 'package:ecommerce/utils/helpers/helper_functions.dart';
import 'package:flutter/material.dart';


import '../../../utils/constants/colors.dart';

class MyCircularIcon extends StatelessWidget {
  const MyCircularIcon({
    super.key,
    this.height,
    this.width,
    required this.icon,
    this.color,
    this.backgroundColor,
    this.onPressed,
    this.size = MySize.lg,
  });

  final double? height, width, size;
  final IconData icon;
  final Color? color;
  final Color? backgroundColor;
  final VoidCallback? onPressed;

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
          color: backgroundColor != null
              ? backgroundColor!
              : THelperFunctions.isDarkMode(context)
                  ? MyColors.black.withOpacity(0.9)
                  : Colors.white.withOpacity(0.9),
          borderRadius: BorderRadius.circular(100)),
      child: IconButton(onPressed: onPressed, icon: Icon(icon,size: size,color: color,)),
    );
  }
}
