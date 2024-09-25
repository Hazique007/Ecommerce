import 'package:ecommerce/utils/helpers/helper_functions.dart';
import 'package:flutter/material.dart';

import '../../../../utils/constants/colors.dart';
import '../../../../utils/constants/image_strings.dart';
import '../../../../utils/constants/sizes.dart';
import '../../images/my_rounded_image.dart';
import '../../texts/brand_title_text_with_verificationbadge.dart';
import '../../texts/product_title_text.dart';


class CartItems extends StatelessWidget {
  const CartItems({
    super.key,
  
  });

 

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        //Image
        MyRoundedImage(
            width: 60,
            height: 60,
            padding: const EdgeInsets.all(MySize.sm),
            backGroundColor:THelperFunctions.isDarkMode(context) ? MyColors.darkerGrey : MyColors.light ,
            imageurl: ImagesStrings.productImage1),
        const SizedBox(width: MySize.spaceBtwItems,),

        //Title ,Price & Size
        Expanded(
          child: Column(
            mainAxisSize: MainAxisSize.min,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const BrandTitleTextWithVerificationbadge(title: "Nike"),
              const Flexible(child: ProductTitleText(title: 'Black Sports Shoes ',smallSize: true,maxLines: 1,)),
              //Attributes
              Text.rich(TextSpan(
                  children: [
                    TextSpan(
                        text: 'Color ',style: Theme.of(context).textTheme.bodySmall
                    ),
                    TextSpan(
                        text: 'Green ',style: Theme.of(context).textTheme.bodyLarge
                    ),
                    TextSpan(
                        text: 'Size ',style: Theme.of(context).textTheme.bodySmall
                    ),
                    TextSpan(
                        text: 'Uk 08 ',style: Theme.of(context).textTheme.bodyLarge
                    )


                  ]
              ))

            ],
          ),
        )



      ],
    );
  }
}