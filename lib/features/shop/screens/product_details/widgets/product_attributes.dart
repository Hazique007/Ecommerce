import 'package:ecommerce/common/widgets/custom_shapes/containers/rounded_container.dart';
import 'package:ecommerce/common/widgets/texts/product_title_text.dart';
import 'package:ecommerce/common/widgets/texts/section_heading.dart';
import 'package:ecommerce/utils/helpers/helper_functions.dart';
import 'package:flutter/material.dart';

import '../../../../../common/widgets/chips/choice_chips.dart';
import '../../../../../utils/constants/colors.dart';
import '../../../../../utils/constants/sizes.dart';

class ProductAttributes extends StatelessWidget {
  const ProductAttributes({super.key});

  @override
  Widget build(BuildContext context) {
    final dark = THelperFunctions.isDarkMode(context);
    return Column(
      children: [
        //-- Selected Attribute Pricing and Description
        MyRoundedContainer(
          padding: const EdgeInsets.all(MySize.md),
          backgroundColor: dark ? MyColors.darkerGrey : MyColors.grey,
          child: Column(
            children: [
              //Title,Proce and Stock Status
              Row(
                children: [
                  const SectionHeading(
                    title: 'Variations',
                    showActionButton: false,
                  ),
                  const SizedBox(
                    width: MySize.spaceBtwItems,
                  ),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Row(
                        children: [
                          const ProductTitleText(
                            title: 'Price: ',
                            smallSize: true,
                          ),

                          //Actual Price
                          Text(
                            '\$25',
                            style: Theme.of(context)
                                .textTheme
                                .titleLarge!
                                .apply(decoration: TextDecoration.lineThrough),
                          ),
                          const SizedBox(
                            width: MySize.spaceBtwItems / 2,
                          ),
                          //Sale Price
                          Text(
                            '\$20',
                            style:
                                Theme.of(context).textTheme.titleLarge!.apply(),
                          ),
                        ],
                      ),

                      //---Stock

                      Row(
                        children: [
                          const ProductTitleText(
                            title: 'Stock: ',
                            smallSize: true,
                          ),
                          Text(
                            'In Stock',
                            style: Theme.of(context).textTheme.bodyLarge,
                          )
                        ],
                      )
                    ],
                  ),
                ],
              ),
              const SizedBox(
                height: MySize.spaceBtwItems / 2,
              ),

              //--- Variation Description

              const ProductTitleText(
                title:
                    'This is the Description of the Product and it can go upto max 4 lines',
                smallSize: true,
                maxLines: 4,
              )
            ],
          ),
        ),
        const SizedBox(
          height: MySize.spaceBtwItems,
        ),

        //---Attributes

         Column(
           crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const SectionHeading(
              title: 'Colors',
              showActionButton: false,
            ),
            const SizedBox(
              height: MySize.spaceBtwItems / 2,
            ),
           Wrap(
             spacing: 8,

             children: [
               MyChoiceCHip(
                 text: 'Green',selected: true,onSelected: (value){},
               ),
               MyChoiceCHip(
                 text: 'Yellow',selected: false,onSelected: (value){},
               ),
               MyChoiceCHip(
                 text: 'Blue',selected:  false,onSelected: (value){},
               ),

             ],
           )

          ],
        ),

         Column(
           crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const SectionHeading(
              title: 'Size',
              showActionButton: false,
            ),
            const SizedBox(
              height: MySize.spaceBtwItems / 2,
            ),
           Wrap(
             spacing: 8,
             children: [
               MyChoiceCHip(
                 text: 'EU 34',selected: true,onSelected: (value){},
               ),
               MyChoiceCHip(
                 text: 'EU 36',selected: false,onSelected: (value){},
               ),
               MyChoiceCHip(
                 text: 'EU 38',selected:  false,onSelected: (value){},
               ),

             ],
           ),

          ],
        ),


      ],
    );
  }
}


