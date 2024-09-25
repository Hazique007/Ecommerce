import 'package:ecommerce/common/widgets/custom_shapes/containers/rounded_container.dart';
import 'package:ecommerce/common/widgets/products/rating/rating_indicator.dart';
import 'package:ecommerce/utils/constants/colors.dart';
import 'package:ecommerce/utils/constants/sizes.dart';
import 'package:ecommerce/utils/helpers/helper_functions.dart';
import 'package:flutter/material.dart';
import 'package:iconsax/iconsax.dart';
import 'package:readmore/readmore.dart';

import '../../../../../utils/constants/image_strings.dart';


class UserReviewCard extends StatelessWidget {
  const UserReviewCard({super.key});

  @override
  Widget build(BuildContext context) {
    final dark = THelperFunctions.isDarkMode(context);
    return Column(
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Row(
              children: [
                const CircleAvatar(backgroundImage: AssetImage(ImagesStrings.userProfileImage1),),
                const SizedBox(width: MySize.spaceBtwItems,),
                Text('John Doe',style: Theme.of(context).textTheme.titleLarge,)
              ],
            ),
            IconButton(onPressed: (){}, icon: const Icon(Iconsax.more))
          ],
        ),

        const SizedBox(height: MySize.spaceBtwItems/2,),

        //Review
        Row(
          children: [
            const MyRatingBarIndicator(rating: 4),
            const SizedBox(width: MySize.spaceBtwItems,),
            Text('01 Nov 2023',style: Theme.of(context).textTheme.bodyMedium,)
          ],
        ),
        const SizedBox(height: MySize.spaceBtwItems,),
        const ReadMoreText(' These shoes offer excellent comfort and support, perfect for long walks or everyday wear. However, the sizing runs a bit small, so consider ordering a half size up.',
          trimLines: 2,
          trimMode: TrimMode.Line,
          trimExpandedText: 'show less',
          trimCollapsedText: 'show more',
          moreStyle: TextStyle(fontSize: 14,fontWeight: FontWeight.bold,color: MyColors.primary),
          lessStyle: TextStyle(fontSize: 14,fontWeight: FontWeight.bold,color: MyColors.primary),
        ),

        const SizedBox(height: MySize.spaceBtwItems,),

        //Company Review
        MyRoundedContainer(
          backgroundColor:  dark ? MyColors.darkerGrey : MyColors.grey,
          child: Padding(padding: const EdgeInsets.all(MySize.md),
          child: Column(
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                Text("Hazique's Store",style: Theme.of(context).textTheme.bodyLarge,),
                Text("02 Nov, 2023",style: Theme.of(context).textTheme.bodyMedium,),

                
              ],),

              const SizedBox(height: MySize.spaceBtwItems,),
              const ReadMoreText(' These shoes offer excellent comfort and support, perfect for long walks or everyday wear. However, the sizing runs a bit small, so consider ordering a half size up.',
                trimLines: 2,
                trimMode: TrimMode.Line,
                trimExpandedText: 'show less',
                trimCollapsedText: 'show more',
                moreStyle: TextStyle(fontSize: 14,fontWeight: FontWeight.bold,color: MyColors.primary),
                lessStyle: TextStyle(fontSize: 14,fontWeight: FontWeight.bold,color: MyColors.primary),
              ),


            ],
          ),

          ),
        ),
        const SizedBox(height: MySize.spaceBtwSections,)
        
      ],
    );
  }
}
