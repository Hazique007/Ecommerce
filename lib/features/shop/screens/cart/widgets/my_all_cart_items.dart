import 'package:flutter/material.dart';

import '../../../../../common/widgets/products/cart/add_remove_item.dart';
import '../../../../../common/widgets/products/cart/cart_item.dart';
import '../../../../../common/widgets/texts/product_price_text.dart';
import '../../../../../utils/constants/sizes.dart';


class MyAllCartItems extends StatelessWidget {
  const MyAllCartItems({super.key,  this.showAddRemoveButtons=true});

  final bool showAddRemoveButtons;

  @override
  Widget build(BuildContext context) {
    return
      ListView.separated(
      shrinkWrap: true,
      separatorBuilder: (_, __) => const SizedBox(
        height: MySize.spaceBtwSections,
      ),
      itemCount: 4,
      itemBuilder: (_, __) => Column(
        children: [
          // Cart items
          const CartItems(),
          if(showAddRemoveButtons )
          const SizedBox(
            height: MySize.spaceBtwItems,
          ),
          if(showAddRemoveButtons )
          const Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Row(

                children: [
                  //Extra Space
                  SizedBox(
                    width: 70,
                  ),
                  // Add remove Button
                  ProductQuantityWithAddRemove(),
                ],
              ),
              ProductPriceText(price: '254')
            ],
          )
        ],
      ),
    );
  }
}
