import 'package:ecommerce/common/brands/brand_card.dart';
import 'package:ecommerce/common/widgets/appbar/appbar.dart';
import 'package:ecommerce/common/widgets/products/sortable/products_sortable.dart';
import 'package:ecommerce/utils/constants/sizes.dart';
import 'package:flutter/material.dart';


class BrandProducts extends StatelessWidget {
  const BrandProducts({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: MyAppBar(
        title: Text('Nike'),
      ),
      body: SingleChildScrollView(
        child: Padding(padding: EdgeInsets.all(MySize.defaultSpace),
        child: Column(
          children: [
           //Brand Details
            MyBrandCard(showBorder: true),
            SizedBox(height: MySize.spaceBtwSections,),
            SortableWidget(),




          ],
        ),
        ),
      ),
    );
  }
}
