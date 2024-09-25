import 'package:ecommerce/utils/constants/sizes.dart';
import 'package:flutter/material.dart';

class BillingAmountSection extends StatelessWidget {
  const BillingAmountSection({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        //Sub Total

        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text('Subtotal',style: Theme.of(context).textTheme.bodyMedium),
            Text('\$256.0',style: Theme.of(context).textTheme.labelLarge),
          ],
        ),
        const SizedBox(height: MySize.spaceBtwItems/2,),

        //Shipping Fee
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text('Shipping Fee',style: Theme.of(context).textTheme.bodyMedium),
            Text('\$6.0',style: Theme.of(context).textTheme.labelLarge),

          ],
        ),
        const SizedBox(height: MySize.spaceBtwItems/2,),

        //Tax Fee
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text('Tax Fee',style: Theme.of(context).textTheme.bodyMedium),
            Text('\$6.0',style: Theme.of(context).textTheme.labelLarge),

          ],
        ),
        const SizedBox(height: MySize.spaceBtwItems/2,),

        //Oder Total
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text('Order Total',style: Theme.of(context).textTheme.bodyMedium),
            Text('\$268.0',style: Theme.of(context).textTheme.labelLarge),

          ],
        ),






      ],
    );
  }
}
