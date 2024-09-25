import 'package:ecommerce/common/widgets/appbar/appbar.dart';
import 'package:ecommerce/features/shop/screens/cart/widgets/my_all_cart_items.dart';
import 'package:ecommerce/features/shop/screens/checkout/checkout.dart';
import 'package:ecommerce/utils/constants/sizes.dart';
import 'package:ecommerce/utils/helpers/helper_functions.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';


class CartScreen extends StatelessWidget {
  const CartScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final dark = THelperFunctions.isDarkMode(context);
    return Scaffold(
      appBar: MyAppBar(
        showbackArrow: true,
        title: Text(
          'Cart',
          style: Theme.of(context).textTheme.headlineSmall,
        ),
      ),
      body: const Padding(
        padding: EdgeInsets.all(MySize.defaultSpace),
        child:
            // --- Items in Cart
        MyAllCartItems(),


      ),
      bottomNavigationBar: Padding(
        padding: const EdgeInsets.all(MySize.defaultSpace),
        child:
            ElevatedButton(onPressed: ()=> Get.to(()=>const CheckoutScreen()), child: const Text('Checkout \$ 256.0')),
      ),
    );
  }
}
