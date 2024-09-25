import 'package:flutter/material.dart';

import '../../utils/constants/colors.dart';
import '../../utils/constants/sizes.dart';
import '../../utils/helpers/helper_functions.dart';
import 'brand_card.dart';
import '../widgets/custom_shapes/containers/rounded_container.dart';

class BrandShowCase extends StatelessWidget {
  const BrandShowCase({
    super.key, required this.images,
  });

  final List<String> images;

  @override
  Widget build(BuildContext context) {
    return MyRoundedContainer(
      padding: const EdgeInsets.all(MySize.md),
      showBorder: true,
      borderColor: MyColors.darkGrey,
      backgroundColor: Colors.transparent,
      margin: const EdgeInsets.only(bottom: MySize.spaceBtwItems),
      child: Column(
        children: [
          //Brands with Product Count
          const MyBrandCard(showBorder: false),
          const SizedBox(height: MySize.spaceBtwItems,),
          //Brand Top 3 PRoduct IMages
          Row(
              children:
              images.map((image) => brandTopProductImageWidget(image, context)).toList()),



        ],
      ),










    );


  }

  Widget brandTopProductImageWidget(String image,context){

    return Expanded(child: MyRoundedContainer(
      height: 100,
      padding: const EdgeInsets.all(MySize.md),
      margin: const EdgeInsets.only(right: MySize.md),
      backgroundColor: THelperFunctions.isDarkMode(context) ? MyColors.darkerGrey : MyColors.light,
      child: Image(
          fit: BoxFit.contain,
          image: AssetImage(image)),

    )
    );

  }







}
