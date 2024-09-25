

import 'package:ecommerce/features/authentication/controllers%20onboarding/onboarding/onboarding_controllers.dart';
import 'package:flutter/material.dart';
import 'package:iconsax/iconsax.dart';

import '../../../../../utils/constants/colors.dart';
import '../../../../../utils/constants/sizes.dart';
import '../../../../../utils/device/devicr_utility.dart';
import '../../../../../utils/helpers/helper_functions.dart';


class OnboardingNextbtn extends StatelessWidget {
  const OnboardingNextbtn({
    super.key,
  });

  @override
  Widget build(BuildContext context) {

    final dark = THelperFunctions.isDarkMode(context);
    return Positioned(
        right: MySize.defaultSpace,
        bottom: TDeviceUtils.getBottomNavigationBarHeight(),

        child: ElevatedButton(onPressed: (){
          OnboardingControllers.insatnce.nextpage();
        },
            style: ElevatedButton.styleFrom(

                shape: const CircleBorder(),
                backgroundColor:dark? MyColors.primary :Colors.black
            ),
            child: const Icon(Iconsax.arrow_right_3)));
  }
}