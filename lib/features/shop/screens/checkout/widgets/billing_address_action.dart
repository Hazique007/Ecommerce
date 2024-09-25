import 'package:ecommerce/utils/constants/sizes.dart';
import 'package:flutter/material.dart';

import '../../../../../common/widgets/texts/section_heading.dart';

class BillingAddressAction extends StatelessWidget {
  const BillingAddressAction({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        SectionHeading(
          title: 'Shipping Address',
          buttonTitle: 'Change',


          onPressed: () {},
        ),

        Text('Hazique Khan\'s house',style: Theme.of(context).textTheme.bodyLarge,),
        Row(children: [
          const Icon(Icons.phone,color: Colors.grey,size: 16,),
          const SizedBox(width: MySize.spaceBtwItems,),
          Text('234-3434-35453',style: Theme.of(context).textTheme.bodyMedium,)
        ],),

        const SizedBox(height: MySize.spaceBtwItems/2,),

        Row(children: [
          const Icon(Icons.location_history,color: Colors.grey,size: 16,),
          const SizedBox(width: MySize.spaceBtwItems,),
          Text('Iqra Colony, Pool House,India',style: Theme.of(context).textTheme.bodyMedium,softWrap: true,)
        ],)
      ],
    );
  }
}
