import 'package:flutter/material.dart';

import '../../../utils/constants/sizes.dart';
import '../../../utils/helpers/helper_functions.dart';

class MyCircularImage extends StatelessWidget {
  const MyCircularImage({
    super.key,
    this.boxfit=BoxFit.cover,
    required this.image,
    this.isNetworkImage=false,
    this.overlayColor,
    this.backgroundColor,
    this.width=56,
    this.height=56,
    this.padding=MySize.sm,
  });

  final BoxFit? boxfit;
  final String image;
  final bool isNetworkImage;
  final Color? overlayColor;
  final Color? backgroundColor;
  final double width,height,padding;


  @override
  Widget build(BuildContext context) {
    return Container(
      width: width,
      height: height,
      padding: EdgeInsets.all(padding),
      decoration: BoxDecoration(
        //if bg color is null then switch to light nd dark mode color designs
        color: backgroundColor ??( THelperFunctions.isDarkMode(context) ? Colors.black : Colors.white),
        borderRadius: BorderRadius.circular(100),


      ),
      child: Center(
        child: Image(
          fit: boxfit,
          image:isNetworkImage ? NetworkImage(image) : AssetImage(image) as ImageProvider,
          color: overlayColor,

        ),
      ),
    );
  }
}