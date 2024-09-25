import 'package:ecommerce/common/widgets/appbar/appbar.dart';
import 'package:ecommerce/common/widgets/custom_shapes/containers/rounded_container.dart';
import 'package:ecommerce/common/widgets/success_screen/success_screen.dart';
import 'package:ecommerce/features/shop/screens/cart/widgets/my_all_cart_items.dart';
import 'package:ecommerce/features/shop/screens/checkout/widgets/billing_address_action.dart';
import 'package:ecommerce/features/shop/screens/checkout/widgets/billing_amount_section.dart';
import 'package:ecommerce/features/shop/screens/checkout/widgets/billing_payment_sectiom.dart';
import 'package:ecommerce/navigation_menu.dart';
import 'package:ecommerce/utils/constants/sizes.dart';
import 'package:ecommerce/utils/helpers/helper_functions.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../../../common/widgets/products/cart/coupon_widget.dart';
import '../../../../utils/constants/image_strings.dart';

class CheckoutScreen extends StatelessWidget {
  const CheckoutScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: MyAppBar(
        showbackArrow: true,
        title: Text(
          'Order Review',
          style: Theme.of(context).textTheme.headlineSmall,
        ),
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(MySize.defaultSpace),
          child: Column(
            children: [
              const MyAllCartItems(
                showAddRemoveButtons: false,
              ),
              const SizedBox(
                height: MySize.spaceBtwSections,
              ),

              //Coupon Textfield
              const MyCouponCode(),
              const SizedBox(
                height: MySize.spaceBtwSections,
              ),

              //-- Billing Section
              MyRoundedContainer(
                showBorder: true,
                padding: const EdgeInsets.all(MySize.md),
                backgroundColor: THelperFunctions.isDarkMode(context)
                    ? Colors.black
                    : Colors.white,
                child: const Column(
                  children: [
                    //-- Pricing
                    BillingAmountSection(),
                    SizedBox(
                      height: MySize.spaceBtwItems,
                    ),

                    //-- Divider
                    Divider(),
                    SizedBox(
                      height: MySize.spaceBtwItems,
                    ),

                    //-- Payment Methods
                    BillingPaymentSectiom(),
                    SizedBox(
                      height: MySize.spaceBtwItems,
                    ),

                    //Address
                    BillingAddressAction()
                  ],
                ),
              )
            ],
          ),
        ),
      ),
      bottomNavigationBar: Padding(
        padding: const EdgeInsets.all(MySize.defaultSpace),
        child: ElevatedButton(
            onPressed: () => Get.to(() => SuccessScreen(
                image: ImagesStrings.successfulPaymentIcon,
                title: 'Payment Success!',
                subtitle: 'Your item will be shipped soon',
                onPressed: ()=> Get.offAll(()=>const NavigationMenu()),
         ),
            ),
            child: const Text('Checkout \$ 256.0')),
      ),
    );
  }
}
