import 'package:flutter/material.dart';

import '../../../utils/constants/sizes.dart';


class GridLayout extends StatelessWidget {
  const GridLayout({
    super.key,
    required this.itemcoubt,
    this.mainAxisExtent=288,
    required this.itemBuilder,
  });

  final int itemcoubt;
  final double? mainAxisExtent;
  final Widget? Function(BuildContext, int) itemBuilder;


  @override
  Widget build(BuildContext context) {
    return
      GridView.builder(
        physics: const NeverScrollableScrollPhysics(),
        itemCount: itemcoubt,
        shrinkWrap: true,
        padding: EdgeInsets.zero,
        gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 2,
          mainAxisSpacing: MySize.gridViewSpacing,
          crossAxisSpacing: MySize.gridViewSpacing,
          mainAxisExtent:mainAxisExtent,
        ),
        itemBuilder: itemBuilder

        );
  }
}