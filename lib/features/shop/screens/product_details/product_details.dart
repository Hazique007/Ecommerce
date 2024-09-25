import 'package:ecommerce/common/widgets/texts/section_heading.dart';
import 'package:ecommerce/features/shop/screens/Product_reviews/project_reviews.dart';
import 'package:ecommerce/features/shop/screens/product_details/widgets/bottom_add_to_cart.dart';
import 'package:ecommerce/features/shop/screens/product_details/widgets/product_attributes.dart';
import 'package:ecommerce/features/shop/screens/product_details/widgets/product_image_slider.dart';
import 'package:ecommerce/features/shop/screens/product_details/widgets/products_meta_data.dart';
import 'package:ecommerce/features/shop/screens/product_details/widgets/rating_share_widget.dart';
import 'package:ecommerce/utils/constants/sizes.dart';
import 'package:ecommerce/utils/helpers/helper_functions.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:iconsax/iconsax.dart';
import 'package:readmore/readmore.dart';


class ProductDetails extends StatelessWidget {
  const ProductDetails({super.key});

  @override
  Widget build(BuildContext context) {
    final dark = THelperFunctions.isDarkMode(context);
    return  Scaffold(
      bottomNavigationBar: const BottomAddToCart(),
      body: SingleChildScrollView(
        child: Column(
          children: [
            //-- Product Image Slider
            const ProducstImageSlider(),

            //---Products details
            
            Padding(padding: const EdgeInsets.only(right: MySize.defaultSpace,left: MySize.defaultSpace,bottom: MySize.defaultSpace),
            child:  Column(
              children: [
              //---Rating and Share
               const RatingAndShare(),

              //--- Price, Title ,Stack and Brand
              const MyProductMetaData(),



              //--- Attributes
                const ProductAttributes(),
                const SizedBox(height: MySize.spaceBtwSections,),


              //-- Checkout Btn
                SizedBox(

                    width: double.infinity,
                    child: ElevatedButton(onPressed: (){}, child: const Text('Checkout'))),
                const SizedBox(height: MySize.spaceBtwSections,),


              //--Description
                const SectionHeading(title: 'Description',showActionButton: false,),
              const SizedBox(height: MySize.spaceBtwItems,),
              const ReadMoreText('These blue Nike shoes combine sleek design with superior comfort, perfect for both casual wear and athletic performance. Featuring a breathable mesh upper and responsive cushioning, they provide excellent support and style. '
                  ,
                trimLines: 2,
                trimMode: TrimMode.Line,
                trimCollapsedText: 'Show more',
                trimExpandedText: 'Less',
                moreStyle: TextStyle(fontSize: 14,fontWeight: FontWeight.w800),
                lessStyle: TextStyle(fontSize: 14,fontWeight: FontWeight.w800),




              ),




              //---Reviews
                const Divider(),
                const SizedBox(height: MySize.spaceBtwItems,),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    SectionHeading(title: 'Reviews(199)',onPressed: (){},showActionButton: false,),
                    IconButton(onPressed: ()=> Get.to(const ProjectReviews()), icon: const Icon(Iconsax.arrow_right_3,size: 18,))
                  ],
                ),

                const SizedBox(height: MySize.spaceBtwSections,),



            ],
            ),


            )




          ],
        ),
      ),
    );
  }
}


