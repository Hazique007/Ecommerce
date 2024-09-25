import 'package:ecommerce/common/widgets/layouts/grid_layout.dart';
import 'package:ecommerce/common/widgets/products/products_card/product_card_vertical.dart';
import 'package:ecommerce/common/widgets/texts/section_heading.dart';
import 'package:flutter/material.dart';

import '../../../../../common/brands/brand_showcase.dart';
import '../../../../../utils/constants/image_strings.dart';
import '../../../../../utils/constants/sizes.dart';



class CategoryTab extends StatelessWidget {
  const CategoryTab({super.key});

  @override
  Widget build(BuildContext context) {
    return ListView(
      scrollDirection: Axis.vertical,
      shrinkWrap: true,
      physics:const NeverScrollableScrollPhysics() ,
      children:[ Padding(padding: const EdgeInsets.all(MySize.defaultSpace),
        child: Column(
          children: [
            //Brands
            const BrandShowCase(
              images: [
              ImagesStrings.productImage3,
              ImagesStrings.productImage2,
              ImagesStrings.productImage1,

            ],

            ),
            const SizedBox(height: MySize.spaceBtwItems,),

            //-----Products

            SectionHeading(title: 'You might like',showActionButton: true,onPressed: (){},),
            const SizedBox(height: MySize.spaceBtwItems,),

            GridLayout(itemcoubt: 4,
                itemBuilder: (_,index){
              return const MyProductCardVertical();

                }),
            const SizedBox(height: MySize.spaceBtwSections,),





          ],
        ),


      )],
    );
  }
}
