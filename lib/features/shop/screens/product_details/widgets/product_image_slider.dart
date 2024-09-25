import 'package:ecommerce/utils/helpers/helper_functions.dart';
import 'package:flutter/material.dart';
import 'package:iconsax/iconsax.dart';

import '../../../../../common/widgets/appbar/appbar.dart';
import '../../../../../common/widgets/custom_shapes/curved_edegs/curved_edges_widget.dart';
import '../../../../../common/widgets/icons/My_Circular_Icon.dart';
import '../../../../../common/widgets/images/my_rounded_image.dart';
import '../../../../../utils/constants/colors.dart';
import '../../../../../utils/constants/image_strings.dart';
import '../../../../../utils/constants/sizes.dart';


class ProducstImageSlider extends StatelessWidget {
  const ProducstImageSlider({
    super.key,

  });



  @override
  Widget build(BuildContext context) {
    final dark = THelperFunctions.isDarkMode(context);
    return CurvedEdgesWidget(
        child: Container(
          decoration: BoxDecoration(
              color: dark? MyColors.darkerGrey : MyColors.light
          ),
          child:Stack(
            children: [
              //----Main Large Image
              const SizedBox(
                  height:400,
                  child: Padding(
                    padding: EdgeInsets.all(MySize.productImageRadius*2),
                    child: Center(child: Image(image: AssetImage(ImagesStrings.productImage5))),
                  )),
              //------Image Slider
              Positioned(
                right: 0,
                bottom: 30,
                left: MySize.defaultSpace,
                child: SizedBox(
                  height:80 ,
                  child: ListView.separated(
                    shrinkWrap: true,
                    scrollDirection: Axis.horizontal,
                    physics: const AlwaysScrollableScrollPhysics(),
                    separatorBuilder: (_,__)=>const SizedBox(width: MySize.spaceBtwItems,), itemCount: 6 ,
                    itemBuilder: (_,index)=>   MyRoundedImage(
                        width: 80,
                        backGroundColor:  dark ? MyColors.dark : MyColors.light,
                        border: Border.all(color: MyColors.primary),
                        padding: const EdgeInsets.all(MySize.sm),
                        imageurl: ImagesStrings.productImage3),

                  ),
                ),
              ),

              //--- AppBar Icons

              const MyAppBar(
                showbackArrow: true,
                actions: [
                  MyCircularIcon(icon: Iconsax.heart5,color: Colors.red,)
                ],
              )



            ],
          ) ,
        )

    );
  }
}
