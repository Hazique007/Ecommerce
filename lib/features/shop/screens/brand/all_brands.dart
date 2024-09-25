import 'package:ecommerce/common/brands/brand_card.dart';
import 'package:ecommerce/common/widgets/appbar/appbar.dart';
import 'package:ecommerce/common/widgets/layouts/grid_layout.dart';
import 'package:ecommerce/common/widgets/products/sortable/products_sortable.dart';
import 'package:ecommerce/common/widgets/texts/section_heading.dart';
import 'package:ecommerce/features/shop/screens/brand/brand_products.dart';
import 'package:ecommerce/utils/constants/sizes.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class AllBrands extends StatelessWidget {
  const AllBrands({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: MyAppBar(
        title: Text('Brand'),showbackArrow: true,
      ),
      body: SingleChildScrollView(
        child: Padding(padding: EdgeInsets.all(MySize.defaultSpace),
        child: Column(
          children: [
            //Heading
            SectionHeading(title: 'Brands',showActionButton: false,),
            SizedBox(height: MySize.spaceBtwItems,),

            //Brands
            GridLayout(
              mainAxisExtent: 80,
                itemcoubt: 10,
                itemBuilder: (_,index)=> MyBrandCard(showBorder: true,onTap: ()=>Get.to(()=>BrandProducts()),))


          ],
        ),
        ),
      ),
    );
  }
}
