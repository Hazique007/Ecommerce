import 'package:ecommerce/common/widgets/custom_shapes/containers/rounded_container.dart';
import 'package:ecommerce/common/widgets/images/my_circular_image.dart';
import 'package:ecommerce/common/widgets/texts/brand_title_text_with_verificationbadge.dart';
import 'package:ecommerce/utils/constants/enums.dart';
import 'package:ecommerce/utils/helpers/helper_functions.dart';
import 'package:flutter/material.dart';

import '../../../../../utils/constants/colors.dart';
import '../../../../../utils/constants/image_strings.dart';
import '../../../../../utils/constants/sizes.dart';

class MyProductMetaData extends StatelessWidget {
  const MyProductMetaData({super.key});

  @override
  Widget build(BuildContext context) {
    final dark = THelperFunctions.isDarkMode(context);
    return  Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        //Price and Sale Price

        Row(
          children: [
          //Sale Tag
          MyRoundedContainer(
            radius: MySize.sm,
            backgroundColor: MyColors.secondary.withOpacity(0.8),
            padding: const EdgeInsets.symmetric(horizontal: MySize.sm, vertical:  MySize.xs),
            child: Text('25%',style: Theme.of(context).textTheme.labelLarge!.apply(color: MyColors.black),),



          ),
          const SizedBox(width: MySize.spaceBtwItems,),

          //Price
          Text('\$250',style: Theme.of(context).textTheme.titleLarge!.apply(decoration: TextDecoration.lineThrough),),

          const SizedBox(width: MySize.spaceBtwItems,),
          Text('\$175',style: Theme.of(context).textTheme.titleLarge!.apply(),),

        ],),
        const SizedBox(height: MySize.spaceBtwItems/1.5,),


        //TItle
        Text('Green Nike Sports Shirt',style: Theme.of(context).textTheme.titleMedium!.apply(),),
        const SizedBox(height: MySize.spaceBtwItems/1.5,),

        //Stock Status

        Row(children: [
          Text('Status',style: Theme.of(context).textTheme.titleMedium!.apply(),),
          const SizedBox(width: MySize.spaceBtwItems,),
          Text('In Stock',style: Theme.of(context).textTheme.bodyMedium!.apply(),),


        ],
        ),
        const SizedBox(height: MySize.spaceBtwItems*1.5,),

        //Brand

       const Row(
         children: [
           MyCircularImage(
               width: 32,height: 32,
               image: ImagesStrings.shoeIcon),
           BrandTitleTextWithVerificationbadge(title: 'Nike',brandtextSize: TextSizes.medium,),
         ],
       )











      ],
    );
  }
}
