import 'package:ecommerce/common/widgets/icons/My_Circular_Icon.dart';
import 'package:ecommerce/utils/constants/colors.dart';
import 'package:ecommerce/utils/constants/sizes.dart';
import 'package:ecommerce/utils/helpers/helper_functions.dart';
import 'package:flutter/material.dart';
import 'package:iconsax/iconsax.dart';

class BottomAddToCart extends StatelessWidget {
  const BottomAddToCart({super.key});

  @override
  Widget build(BuildContext context) {
    final dark = THelperFunctions.isDarkMode(context);
    return Container(
      padding: const EdgeInsets.symmetric(
          horizontal: MySize.defaultSpace, vertical: MySize.defaultSpace/2),
      decoration: BoxDecoration(
          color: dark ? MyColors.darkerGrey : MyColors.light,
          borderRadius: const BorderRadius.only(
            topLeft: Radius.circular(MySize.cardRadiusLg),
            topRight: Radius.circular(MySize.cardRadiusLg),
          )),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
         Row(
           children: [
             const MyCircularIcon(
               icon: Iconsax.minus,
               backgroundColor: MyColors.darkGrey,
               width: 40,
               height: 40,
               color: Colors.white,
             ),
             const SizedBox(width: MySize.spaceBtwItems,),
             Text('2',style: Theme.of(context).textTheme.titleSmall,),
             const SizedBox(width: MySize.spaceBtwItems,),
             const MyCircularIcon(
               icon: Iconsax.add,
               backgroundColor: MyColors.black,
               width: 40,
               height: 40,
               color: Colors.white,
             ),
           ],
         ),

          ElevatedButton(onPressed: (){},
              style: ElevatedButton.styleFrom(
                padding: const EdgeInsets.all(MySize.md),
                backgroundColor: MyColors.black,
                side: const BorderSide(color: MyColors.black)
              ),
              child: const Text('Add to Cart'))
        ],
      ),
    );
  }
}
