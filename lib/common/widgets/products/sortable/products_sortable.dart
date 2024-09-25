import 'package:flutter/material.dart';
import 'package:iconsax/iconsax.dart';

import '../../../../utils/constants/sizes.dart';
import '../../layouts/grid_layout.dart';
import '../products_card/product_card_vertical.dart';


class SortableWidget extends StatelessWidget {
  const SortableWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        //Dropdwon

        DropdownButtonFormField(
            decoration: InputDecoration(
                prefixIcon: Icon(Iconsax.sort)
            ),
            items: ['Name','Higher Price','Lower Price','Sale','Newest','Popularity'].map((options)=>DropdownMenuItem(
                value:options ,
                child: Text(options))).toList(),
            onChanged: (value){}),
        SizedBox(height: MySize.spaceBtwSections,),
        //Products
        GridLayout(
            itemcoubt: 4,
            itemBuilder: (_,index)=>MyProductCardVertical())
      ],
    );
  }
}