

import 'package:ecommerce/common/widgets/products/products_card/product_card_vertical.dart';
import 'package:ecommerce/features/shop/screens/all_products/all_products.dart';
import 'package:ecommerce/features/shop/screens/home/widgets/home_appbar.dart';
import 'package:ecommerce/features/shop/screens/home/widgets/home_category.dart';
import 'package:ecommerce/features/shop/screens/home/widgets/promo_slider.dart';


import 'package:flutter/material.dart';
import 'package:get/get.dart';



import '../../../../common/widgets/custom_shapes/containers/primary_header_container.dart';
import '../../../../common/widgets/custom_shapes/containers/search_containers.dart';


import '../../../../common/widgets/layouts/grid_layout.dart';
import '../../../../common/widgets/texts/section_heading.dart';

import '../../../../utils/constants/image_strings.dart';
import '../../../../utils/constants/sizes.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
          PrimaryHeaderContainer(
                child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                //AppBar
                MyHomeAppBar(),

                SizedBox(
                  height: MySize.spaceBtwSections,
                ),

                //SearchBar
                MyHomePageSearchBar(
                  text: 'Search in Store',
                ),

                SizedBox(
                  height: MySize.spaceBtwSections,
                ),

                //Categories
                Padding(
                  padding: EdgeInsets.only(left: MySize.defaultSpace),
                  child: Column(
                    children: [
                      //Heading

                      SectionHeading(title: 'Popular Categories',
                       
                        showActionButton: false,
                        textcolor: Colors.white,),

                      SizedBox(
                        height: MySize.spaceBtwItems,
                      ),

                      //Scrollable Categories
                      HomeCategories(),
                      SizedBox(
                        height: MySize.spaceBtwSections,
                      ),




                    ],
                  ),
                )
              ],
            )),


            //Body

            Padding(
              padding: const EdgeInsets.all(MySize.defaultSpace),
              child:
              Column(
                children: [
                  const PromoSlider(
                    banners: [
                      ImagesStrings.promoBanner1,
                      ImagesStrings.promoBanner2,
                      ImagesStrings.promoBanner3,

                    ],


                  ),

                  const SizedBox(
                    height: MySize.spaceBtwSections,
                  ),

                  //Popular Products
                  SectionHeading(title: 'Popular products',onPressed: ()=>Get.to(()=>AllProducts()),),
                  const SizedBox(height: MySize.spaceBtwItems,),
                  GridLayout(itemcoubt: 2,
                    itemBuilder: (_,index)=>const MyProductCardVertical(),
                    
                    
                  )

                ],
              )
            )
          ],
        ),
      ),
    );
  }
}












