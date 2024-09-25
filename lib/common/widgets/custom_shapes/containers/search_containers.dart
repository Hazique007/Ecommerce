import 'package:flutter/material.dart';
import 'package:iconsax/iconsax.dart';

import '../../../../utils/constants/colors.dart';
import '../../../../utils/constants/sizes.dart';
import '../../../../utils/device/devicr_utility.dart';
import '../../../../utils/helpers/helper_functions.dart';


class MyHomePageSearchBar extends StatelessWidget {
  const MyHomePageSearchBar({
    super.key,
    required this.text,
    this.icon= Iconsax.search_normal,
    this.showBg=true,
    this.showBorder=true,
    this.onTap,
    this.padding=  const EdgeInsets.symmetric(horizontal: MySize.defaultSpace),
  });

  final String text;
  final IconData? icon;
  final bool showBg, showBorder;
  final VoidCallback? onTap;
  final EdgeInsetsGeometry padding;

  @override
  Widget build(BuildContext context) {
    final dark = THelperFunctions.isDarkMode(context);
    return Padding(
      padding:padding,
      child: GestureDetector(
        onTap: onTap,
        child: Container(
          width: TDeviceUtils.getScreenWidth(context),
          padding: const EdgeInsets.all(MySize.md),
          decoration: BoxDecoration(
              color: showBg
                  ? dark
                  ? MyColors.dark
                  : MyColors.light
                  : Colors.transparent,
              borderRadius: BorderRadius.circular(MySize.cardRadiusLg),
              border: showBorder ? Border.all(color: MyColors.grey) : null),
          child: Row(
            children: [
              Icon(
                icon,
                color: MyColors.darkerGrey,
              ),
              const SizedBox(
                width: MySize.spaceBtwItems,
              ),
              Text(
                text,
                style: Theme.of(context).textTheme.bodySmall,
              )
            ],
          ),
        ),
      ),
    );
  }
}