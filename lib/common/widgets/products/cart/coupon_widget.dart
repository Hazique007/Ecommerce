import 'package:flutter/material.dart';

import '../../../../utils/constants/colors.dart';
import '../../../../utils/constants/sizes.dart';
import '../../../../utils/helpers/helper_functions.dart';
import '../../custom_shapes/containers/rounded_container.dart';


class MyCouponCode extends StatelessWidget {
  const MyCouponCode({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return MyRoundedContainer(
      showBorder: true,
      backgroundColor:  THelperFunctions.isDarkMode(context) ? MyColors.dark : Colors.white,
      padding: const EdgeInsets.only(top: MySize.sm,bottom: MySize.sm,right: MySize.sm,left: MySize.md),
      child: Row(
        children: [
          Flexible(
            child: TextFormField(
              decoration: const InputDecoration(
                hintText: 'Have a promo code? Enter here',
                focusedBorder: InputBorder.none,
                enabledBorder: InputBorder.none,
                errorBorder: InputBorder.none,
                disabledBorder: InputBorder.none,
              ),
            ),
          ),

          //Button
          SizedBox(
              width: 80,
              child: ElevatedButton(onPressed: (){},
                  style: ElevatedButton.styleFrom(
                      foregroundColor: THelperFunctions.isDarkMode(context) ? Colors.white.withOpacity(0.5) : MyColors.dark.withOpacity(0.5),
                      backgroundColor: Colors.grey.withOpacity(0.2),
                      side: BorderSide(color: MyColors.grey.withOpacity(0.1))
                  ),
                  child: const Text('Apply')))


        ],
      ),
    );
  }
}