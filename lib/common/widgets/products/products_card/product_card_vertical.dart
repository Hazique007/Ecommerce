import 'package:ecommerce/common/widgets/custom_shapes/containers/rounded_container.dart';
import 'package:ecommerce/common/widgets/images/my_rounded_image.dart';
import 'package:ecommerce/common/widgets/texts/brand_title_text_with_verificationbadge.dart';
import 'package:ecommerce/features/shop/screens/product_details/product_details.dart';
import 'package:ecommerce/utils/constants/sizes.dart';
import 'package:ecommerce/utils/helpers/helper_functions.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:iconsax/iconsax.dart';

import '../../../../utils/constants/colors.dart';
import '../../../../utils/constants/image_strings.dart';
import '../../../styles/shadow.dart';
import '../../icons/My_Circular_Icon.dart';
import '../../texts/product_price_text.dart';
import '../../texts/product_title_text.dart';

class MyProductCardVertical extends StatelessWidget {
  const MyProductCardVertical({super.key});

  @override
  Widget build(BuildContext context) {
    final dark = THelperFunctions.isDarkMode(context);
    //Container with side paddings,color,edges,radius and shadow
    return
      GestureDetector(
      onTap: ()=> Get.to(()=> const ProductDetails()),

      child:
      Container(
        width: 180,
        padding: const EdgeInsets.all(1),
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(MySize.productImageRadius),
            boxShadow: [MyShadowStyle.verticalProductsShadow],
            color: dark ? MyColors.darkerGrey : Colors.white),
        child: Column(
          children: [
            //Thumbnail
            MyRoundedContainer(
              height: 180,
              padding: const EdgeInsets.all(MySize.sm),
              backgroundColor: dark ? MyColors.dark : MyColors.light,
              child: Stack(
                children: [
                  //Thumbnail Image
                  const MyRoundedImage(imageurl: ImagesStrings.productImage1),
      
                  //Sale Tag
                  Positioned(
                    top: 12,
                    child: MyRoundedContainer(
                      radius: MySize.sm,
                      backgroundColor: MyColors.secondary.withOpacity(0.8),
                      padding: const EdgeInsets.symmetric(
                          horizontal: MySize.sm, vertical: MySize.xs),
                      child: Text(
                        '25%',
                        style: Theme.of(context)
                            .textTheme
                            .labelLarge!
                            .apply(color: MyColors.black),
                      ),
                    ),
                  ),
      
                  //Fav Icon Buttom
      
                  const Positioned(
                    top: 0,
                    right: 0,
                    child: MyCircularIcon(
                      icon: Iconsax.heart5,
                      color: Colors.red,
                    ),
                  )
                ],
              ),
            ),
      
            const SizedBox(
              height: MySize.spaceBtwItems / 2,
            ),
      
            ///---Details
            const Padding(
              padding: EdgeInsets.only(left: MySize.sm),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  ProductTitleText(
                    title: 'Green Nike Air Shoes',
                    smallSize: true,
                  ),
                  SizedBox(
                    height: MySize.spaceBtwItems / 2,
                  ),
                 BrandTitleTextWithVerificationbadge(title: 'Nike')

                  //Todo: Add Spacer() here to keep the height of each Box same in case 1 or 2 lines of Headings

                ],
              ),
            ),
            const Spacer(),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                //Price
                const Padding(
                  padding: EdgeInsets.only(left: MySize.sm),
                  child: ProductPriceText(
                    price: '35',


                  ),
                ),

                //Add to Cart Button
                Container(
                  decoration:  const BoxDecoration(
                      color: MyColors.dark,
                      borderRadius: BorderRadius.only(
                        topLeft: Radius.circular(MySize.cardRadiusMd),
                        bottomRight:
                        Radius.circular(MySize.productImageRadius),
                      )),
                  child: const SizedBox(
                      width: MySize.iconLg * 1.2,
                      height: MySize.iconLg * 1.2,
                      child: Center(
                          child: Icon(
                            Iconsax.add,
                            color: Colors.white,
                          ))),
                )
              ],
            )

          ],
        ),
      ),
    );
  }
}




