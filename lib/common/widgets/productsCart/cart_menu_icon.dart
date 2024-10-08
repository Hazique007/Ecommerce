import 'package:ecommerce/features/shop/screens/cart/cart.dart';
import 'package:ecommerce/utils/helpers/helper_functions.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:iconsax/iconsax.dart';

import '../../../utils/constants/colors.dart';


class CartCounterIcon extends StatelessWidget {
  const CartCounterIcon({
    super.key,
    // required this.iconColor,
  });


  // final Color iconColor;

  @override
  Widget build(BuildContext context) {
    final dark = THelperFunctions.isDarkMode(context);
    return Stack(
      children: [
        IconButton(onPressed: ()=>Get.to(()=>const CartScreen()), icon: Icon(Iconsax.shopping_bag,color: dark? Colors.white : MyColors.dark,)),
        Positioned(
          right: 0,

          child: Container(
            width: 18,
            height: 18,
            decoration: BoxDecoration(
                color: MyColors.black.withOpacity(0.5),
                borderRadius: BorderRadius.circular(100)
            ),
            child: Center(
              child: Text('2',style: Theme.of(context).textTheme.labelLarge!.apply(color: Colors.white,fontSizeFactor: 0.8),),
            ),
          ),
        )
      ],
    );
  }
}