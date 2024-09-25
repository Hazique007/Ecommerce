import 'package:flutter/material.dart';

import '../../../../../common/widgets/appbar/appbar.dart';
import '../../../../../common/widgets/productsCart/cart_menu_icon.dart';
import '../../../../../utils/constants/colors.dart';
import '../../../../../utils/constants/texts_strings.dart';

class MyHomeAppBar extends StatelessWidget {
  const MyHomeAppBar({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return MyAppBar(

      title: Column(children: [
        Padding(
          padding: const EdgeInsets.only(right: 40),
          child: Text(MyTexts.homeAppbarTitle,style: Theme.of(context).textTheme.labelMedium!.apply(color: MyColors.grey),),
        ),
        Text(MyTexts.homeAppbarSubTitle,style: Theme.of(context).textTheme.headlineSmall!.apply(color: Colors.white),),
      ],) ,
      actions: const [
        CartCounterIcon()

      ],
    );
  }
}