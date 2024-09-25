import 'package:ecommerce/utils/helpers/helper_functions.dart';
import 'package:flutter/material.dart';
import 'package:iconsax/iconsax.dart';

import '../../../../utils/constants/colors.dart';
import '../../../../utils/constants/sizes.dart';
import '../../icons/My_Circular_Icon.dart';


class ProductQuantityWithAddRemove extends StatelessWidget {
  const ProductQuantityWithAddRemove({
    super.key,

  });



  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisSize: MainAxisSize.min,
      children: [
        MyCircularIcon(
          icon: Iconsax.minus,
          size: MySize.md,
          width: 32,
          height: 32,
          color: THelperFunctions.isDarkMode(context) ? Colors.white : MyColors.black,
          backgroundColor: THelperFunctions.isDarkMode(context) ? MyColors.darkerGrey : MyColors.light,
        ),

        const SizedBox(
          width: MySize.spaceBtwItems,
        ),
        Text('2',style: Theme.of(context).textTheme.bodyLarge,),
        const SizedBox(
          width: MySize.spaceBtwItems,
        ),
        const MyCircularIcon(
            icon: Iconsax.add,
            size: MySize.md,
            width: 32,
            height: 32,
            color: Colors.white,
            backgroundColor: MyColors.primary
        ),
      ],
    );
  }
}