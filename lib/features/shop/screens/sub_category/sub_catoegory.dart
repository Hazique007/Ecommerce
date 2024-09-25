import 'package:ecommerce/common/widgets/appbar/appbar.dart';
import 'package:ecommerce/common/widgets/images/my_rounded_image.dart';
import 'package:ecommerce/common/widgets/products/products_card/products_card_horizontal.dart';
import 'package:ecommerce/common/widgets/texts/section_heading.dart';
import 'package:ecommerce/utils/constants/sizes.dart';
import 'package:flutter/material.dart';

import '../../../../utils/constants/image_strings.dart';



class SubCatoegory extends StatelessWidget {
  const SubCatoegory({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const MyAppBar(
        title: Text('Sports'),showbackArrow: true,
      ),
      body: SingleChildScrollView(
        child: Padding(padding: const EdgeInsets.all(MySize.defaultSpace),
        child:Column(
          children: [
            //Banner
            const MyRoundedImage(
                width: double.infinity,
                applyImageRadius: true,
                imageurl: ImagesStrings.banner3),
            const SizedBox(height: MySize.spaceBtwSections,),

            // ---- Sub-Category
            Column(
              children: [
                //Heading
                SectionHeading(title: 'Sports shirts',onPressed: (){},),
                const SizedBox(height: MySize.spaceBtwItems/2,),

                SizedBox(
                  height: 120,
                  child: ListView.separated(
                    separatorBuilder: (context,index)=>SizedBox(width: MySize.spaceBtwItems,),
                    itemCount: 4,
                      scrollDirection: Axis.horizontal,
                      itemBuilder: (context,index)=>
                      ProductsCardHorizontal()),
                )


              ],
            )

            
          ],
        )

          ),
      ),
    );
  }
}
