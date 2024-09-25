import 'package:flutter/material.dart';

import '../../../utils/constants/colors.dart';
import '../../../utils/constants/image_strings.dart';
import '../../../utils/constants/sizes.dart';


class SocialButtons extends StatelessWidget {
  const SocialButtons({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Container(
          decoration: BoxDecoration(
            border: Border.all(color: MyColors.grey),borderRadius: BorderRadius.circular(100),

          ),
          child: IconButton(onPressed: (){}, icon: const Image(
              width: MySize.iconMd,
              height: MySize.iconMd,
              image: AssetImage(ImagesStrings.google))),
        ),
        const SizedBox(width: MySize.spaceBtwItems,),
        Container(
          decoration: BoxDecoration(
            border: Border.all(color: MyColors.grey),borderRadius: BorderRadius.circular(100),

          ),
          child: IconButton(onPressed: (){}, icon: const Image(
              width: MySize.iconMd,
              height: MySize.iconMd,
              image: AssetImage(ImagesStrings.facebook))),
        ),


      ],
    );
  }
}