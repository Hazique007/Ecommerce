import 'package:ecommerce/utils/constants/colors.dart';
import 'package:ecommerce/utils/constants/sizes.dart';
import 'package:ecommerce/utils/helpers/helper_functions.dart';
import 'package:flutter/material.dart';
import 'package:iconsax/iconsax.dart';

import '../../../../../common/widgets/custom_shapes/containers/rounded_container.dart';

class SingleAddress extends StatelessWidget {
  const SingleAddress({super.key, required this.selectedAddress});

  final bool selectedAddress;

  @override
  Widget build(BuildContext context) {
    final dark = THelperFunctions.isDarkMode(context);
    return MyRoundedContainer(
      padding: const EdgeInsets.all(MySize.md),
      width: double.infinity,
      showBorder: true,
      backgroundColor: selectedAddress
          ? MyColors.primary.withOpacity(0.5)
          : Colors.transparent,
      borderColor: selectedAddress
          ? Colors.transparent
          : dark
              ? MyColors.darkerGrey
              : MyColors.grey,
      margin: const EdgeInsets.only(bottom: MySize.spaceBtwItems),
      child: Stack(
        children: [
          //Icon
          
          Positioned(
            right: 5,top: 0,

            child: Icon(selectedAddress ? Iconsax.tick_circle5 : null,
              color: selectedAddress? dark ? MyColors.light : MyColors.dark : null,


            ),
          ),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text('John Doe',
                maxLines: 2,
                overflow: TextOverflow.ellipsis,
                style: Theme.of(context).textTheme.titleLarge,

              ),

              const SizedBox(height: MySize.sm/2,),
              const Text('(+123) 456 7190',maxLines: 1,overflow: TextOverflow.ellipsis,),
              const SizedBox(height: MySize.sm/2,),
              const Text('83238 Timmy Caves, South Liana ,USA',
               softWrap: true,

              ),

              
            ],
          )
          
          
          
        ],
      ),
    );
  }
}
