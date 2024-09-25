import 'package:ecommerce/common/widgets/texts/brand_title_text.dart';
import 'package:ecommerce/utils/constants/colors.dart';
import 'package:ecommerce/utils/constants/enums.dart';
import 'package:ecommerce/utils/constants/sizes.dart';
import 'package:flutter/material.dart';
import 'package:iconsax/iconsax.dart';

class BrandTitleTextWithVerificationbadge extends StatelessWidget {
  const BrandTitleTextWithVerificationbadge({
    super.key, 
    required this.title, 
    this.maxlines=1, 
    this.textAlign=TextAlign.center,
    this.brandtextSize=TextSizes.small,
    this.textcolor, 
    this.iconcolor=MyColors.primary
  
  }
      );
  
  final String title;
  final int maxlines;
  final Color? textcolor,iconcolor;
  final TextAlign? textAlign;
  final TextSizes brandtextSize;

  @override
  Widget build(BuildContext context) {
    return Row
      (
      mainAxisSize: MainAxisSize.min,
      children: [
      Flexible(
          child: BrandTitleText(
          title: title,
            color: textcolor,
            maxLines: maxlines,
            textalign: textAlign,
            brandTextSize: brandtextSize,
          
          
          
          )),
      // SizedBox(width: MySize.xs,),
      Icon(Iconsax.verify5,color:iconcolor,size: MySize.iconxs,)
      
    ],);
  }
}
