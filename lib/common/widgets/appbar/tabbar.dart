import 'package:ecommerce/utils/constants/colors.dart';
import 'package:ecommerce/utils/device/devicr_utility.dart';
import 'package:ecommerce/utils/helpers/helper_functions.dart';
import 'package:flutter/material.dart';


class MyTabBar extends StatelessWidget implements PreferredSizeWidget {
  const MyTabBar({super.key, required this.tabs, });
  
  final List<Widget> tabs;

  @override
  Widget build(BuildContext context) {
    final dark = THelperFunctions.isDarkMode(context);
    return Material(
      color: dark? MyColors.black : Colors.white,
      child:TabBar(
          isScrollable: true,
          indicatorColor: MyColors.primary,
          labelColor: dark? Colors.white : MyColors.primary,
          unselectedLabelColor: MyColors.darkGrey,

          tabs: tabs)
      
      
      
    );
  }

  @override
  // TODO: implement preferredSize
  Size get preferredSize => Size.fromHeight(TDeviceUtils.getAppBarHeight());
}
