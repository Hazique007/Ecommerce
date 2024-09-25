import 'package:ecommerce/common/widgets/appbar/appbar.dart';
import 'package:ecommerce/common/widgets/layouts/grid_layout.dart';
import 'package:ecommerce/common/widgets/products/products_card/product_card_vertical.dart';
import 'package:ecommerce/utils/constants/sizes.dart';
import 'package:flutter/material.dart';
import 'package:iconsax/iconsax.dart';

import '../../../../common/widgets/products/sortable/products_sortable.dart';


class AllProducts extends StatelessWidget {
  const AllProducts({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: MyAppBar(
        title: Text('Popular Products ',),showbackArrow: true,
        
      ),
      body:SingleChildScrollView(
        child: Padding(padding: EdgeInsets.all(MySize.defaultSpace),
        child:
        SortableWidget(),

        ),
      ),
    );
  }
}


