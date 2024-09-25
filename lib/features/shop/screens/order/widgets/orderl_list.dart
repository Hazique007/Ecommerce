import 'package:ecommerce/common/widgets/custom_shapes/containers/rounded_container.dart';
import 'package:ecommerce/utils/constants/colors.dart';
import 'package:ecommerce/utils/constants/sizes.dart';
import 'package:ecommerce/utils/helpers/helper_functions.dart';
import 'package:flutter/material.dart';
import 'package:iconsax/iconsax.dart';

class OrderlListItems extends StatelessWidget {
  const OrderlListItems({super.key});

  @override
  Widget build(BuildContext context) {
    return
      ListView.separated(
        shrinkWrap: true,
        itemCount: 5,
        separatorBuilder: (_,index)=>const SizedBox(height: MySize.spaceBtwItems,),
        itemBuilder: (_,index)=>
        MyRoundedContainer(
        padding: const EdgeInsets.all(MySize.md),
        showBorder: true,
        backgroundColor:
            THelperFunctions.isDarkMode(context) ? MyColors.dark : MyColors.light,
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            //--Row 1
            Row(
              children: [
                //Icon

                const Icon(Iconsax.ship),
                const SizedBox(
                  width: MySize.spaceBtwItems / 2,
                ),

                //-- Status and date
                Expanded(

                  child: Column(
                    mainAxisSize: MainAxisSize.min,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        'Processing',
                        style: Theme.of(context)
                            .textTheme
                            .bodyLarge!
                            .apply(color: MyColors.primary),
                      ),
                      Text('07 Nov 2024',style: Theme.of(context).textTheme.headlineSmall,)

                    ],
                  ),
                ),
                //--- Icon
                IconButton(onPressed: (){}, icon: const Icon(Iconsax.arrow_right_34,size: MySize.iconSm,))
              ],
            ),

            const SizedBox(height: MySize.spaceBtwItems,),

            Row(
              children: [
                Expanded(
                  child: Row(
                    children: [
                      //Icon

                      const Icon(Iconsax.tag),
                      const SizedBox(
                        width: MySize.spaceBtwItems / 2,
                      ),

                      //-- Status and date
                      Expanded(

                        child: Column(
                          mainAxisSize: MainAxisSize.min,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              'Order',
                              style: Theme.of(context)
                                  .textTheme
                                  .labelMedium

                            ),
                            Text('[#2453]',style: Theme.of(context).textTheme.titleMedium,)

                          ],
                        ),
                      ),


                    ],
                  ),
                ),
                Expanded(
                  child: Row(
                    children: [
                      //Icon

                      const Icon(Iconsax.calendar),
                      const SizedBox(
                        width: MySize.spaceBtwItems / 2,
                      ),

                      //-- Status and date
                      Expanded(

                        child: Column(
                          mainAxisSize: MainAxisSize.min,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              'Shipping Date',
                              style: Theme.of(context)
                                  .textTheme
                                  .labelMedium
                            ),
                            Text('07 Nov 2024',style: Theme.of(context).textTheme.titleLarge,)

                          ],
                        ),
                      ),
                      //--- Icon

                    ],
                  ),
                ),
              ],
            ),
          ],
        ),
            ),
      );
  }
}
