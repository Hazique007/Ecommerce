import 'package:ecommerce/common/widgets/custom_shapes/containers/rounded_container.dart';
import 'package:ecommerce/common/widgets/icons/My_Circular_Icon.dart';
import 'package:ecommerce/common/widgets/images/my_rounded_image.dart';
import 'package:ecommerce/common/widgets/texts/brand_title_text_with_verificationbadge.dart';
import 'package:ecommerce/common/widgets/texts/product_price_text.dart';
import 'package:ecommerce/common/widgets/texts/product_title_text.dart';
import 'package:ecommerce/utils/helpers/helper_functions.dart';
import 'package:flutter/material.dart';
import 'package:iconsax/iconsax.dart';

import '../../../../utils/constants/colors.dart';
import '../../../../utils/constants/image_strings.dart';
import '../../../../utils/constants/sizes.dart';
import '../../../styles/shadow.dart';

class ProductsCardHorizontal extends StatelessWidget {
  const ProductsCardHorizontal({super.key});

  @override
  Widget build(BuildContext context) {
    final dark = THelperFunctions.isDarkMode(context);
    return  Container(
        width: 310,
        padding: const EdgeInsets.all(1),
    decoration: BoxDecoration(
    borderRadius: BorderRadius.circular(MySize.productImageRadius),

    color: dark ? MyColors.darkerGrey : MyColors.lightContainer),
      child: Row(
        children: [
          //Thumbnail
          MyRoundedContainer(
            height: 120,
            padding: EdgeInsets.all(MySize.sm),
            backgroundColor:  dark?  MyColors.dark : MyColors.light,
            child: Stack(
              children: [
                //--Thumbnail Image
                SizedBox(
                    height:120,
                    width: 120,
                    child: MyRoundedImage(imageurl: ImagesStrings.productImage1,applyImageRadius: true,)),

                //----Sale Tag
                Positioned(
                    top: 12,
                    child: MyRoundedContainer(
                  radius: MySize.sm,
                      backgroundColor: MyColors.secondary.withOpacity(0.8),
                      padding: EdgeInsets.symmetric(horizontal: MySize.sm,vertical: MySize.xs),
                      child: Text('25%',style: Theme.of(context).textTheme.labelLarge!.apply(color: Colors.black),),
                )),

                //--Fav Icon Button

                Positioned(
                    top: 0,right: 0,
                    child: MyCircularIcon(icon: Iconsax.heart5,color: Colors.red,))

              ],
            ),
          ),
          
          //---Details
          SizedBox(
            width: 172,
            child: Padding(
              padding: const EdgeInsets.only(top: MySize.sm,left: MySize.sm),
              child: Column(
                children: [
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      ProductTitleText(title: 'Green Nike Sports Shoes',smallSize: true,),
                      SizedBox(height: MySize.spaceBtwItems/2,),
                      BrandTitleTextWithVerificationbadge(title: 'Nike')


                    ],
                  ),
                  Spacer(),

                  
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Flexible(child: ProductPriceText(price:'256')),

                      //--Add to cart
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
          )
        ],
      ),

    );
  }
}
