import 'package:flutter/material.dart';

import '../../../utils/constants/sizes.dart';


class MyRoundedImage extends StatelessWidget {
  const MyRoundedImage({
    super.key,
    this.width,
    this.height,
    required this.imageurl,
    this.applyImageRadius=false,
    this.border,
    this.boxfit=BoxFit.contain,
    this.padding,
    this.isNetworkImage=false,
    this.onPressed,
     this.backGroundColor,
    this.borderradius=MySize.md,
  });

  final  double? width,height;
  final String  imageurl;
  final bool applyImageRadius;
  final BoxBorder? border;
  final Color? backGroundColor;
  final BoxFit? boxfit;
  final EdgeInsetsGeometry? padding;
  final bool isNetworkImage;
  final VoidCallback? onPressed;
  final double borderradius;




  @override
  Widget build(BuildContext context) {
    return
      GestureDetector(
        onTap: onPressed,
        child: Container(
          width: width,
          height: height,
          decoration: BoxDecoration(
              border: border,
              borderRadius: BorderRadius.circular(MySize.md),
              color: backGroundColor

          ),
          child: ClipRRect(
              borderRadius:applyImageRadius?  BorderRadius.circular(borderradius) : BorderRadius.zero,
              child: Image(image: isNetworkImage ? NetworkImage(imageurl) :AssetImage(imageurl) as ImageProvider,fit: boxfit,

              )),
        ),
      );
  }
}