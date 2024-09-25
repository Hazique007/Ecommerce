import 'package:ecommerce/common/widgets/custom_shapes/containers/rounded_container.dart';
import 'package:ecommerce/common/widgets/texts/section_heading.dart';
import 'package:ecommerce/utils/constants/colors.dart';
import 'package:ecommerce/utils/constants/image_strings.dart';
import 'package:ecommerce/utils/helpers/helper_functions.dart';
import 'package:flutter/material.dart';

import '../../../../../utils/constants/sizes.dart';

class BillingPaymentSectiom extends StatelessWidget {
  const BillingPaymentSectiom({super.key});

  @override
  Widget build(BuildContext context) {
    return  Column(
      children: [
        SectionHeading(title: 'Payment Method',buttonTitle: 'Change',showActionButton: true,onPressed: (){},),
        const SizedBox(height: MySize.spaceBtwItems/2,),
        Row(
          children: [
            MyRoundedContainer(
              width: 60,
              height: 35,
              backgroundColor: THelperFunctions.isDarkMode(context) ? MyColors.light : Colors.white ,
              padding: const EdgeInsets.all(MySize.sm),
              child: const Image(image: AssetImage(ImagesStrings.paypal),fit: BoxFit.contain,),
            ),
            const SizedBox(width: MySize.spaceBtwItems/2,),
            Text('Paypal',style: Theme.of(context).textTheme.bodyLarge,),
          ],
        )

      ],

    );
  }
}
