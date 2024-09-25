import 'package:ecommerce/common/widgets/appbar/appbar.dart';
import 'package:ecommerce/common/widgets/icons/My_Circular_Icon.dart';
import 'package:ecommerce/common/widgets/layouts/grid_layout.dart';
import 'package:ecommerce/common/widgets/products/products_card/product_card_vertical.dart';
import 'package:ecommerce/features/shop/screens/store/store.dart';
import 'package:ecommerce/utils/constants/sizes.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:iconsax/iconsax.dart';


class WishlistPage extends StatelessWidget {
  const WishlistPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: MyAppBar(
          title: Text('WishList',style: Theme.of(context).textTheme.headlineMedium,),
        actions: [
          MyCircularIcon(icon: Iconsax.add,onPressed: ()=>Get.to(const Store()),)
        ],
      ),
      body: SingleChildScrollView(
        child: Padding(padding: const EdgeInsets.all(MySize.defaultSpace),
        child: Column(

          children: [
            GridLayout(
                itemcoubt: 4,
                itemBuilder: (_,index){
                  return const MyProductCardVertical();
                })



        ],),

        ),
      ),
    );
  }
}
