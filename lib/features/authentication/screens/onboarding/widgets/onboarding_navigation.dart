
import 'package:flutter/material.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

import '../../../../../utils/constants/colors.dart';
import '../../../../../utils/constants/sizes.dart';
import '../../../../../utils/device/devicr_utility.dart';
import '../../../../../utils/helpers/helper_functions.dart';
import '../../../controllers onboarding/onboarding/onboarding_controllers.dart';


class OnBoardingNavigationDot extends StatelessWidget {
  const OnBoardingNavigationDot({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    final controller = OnboardingControllers.insatnce;

    final dark = THelperFunctions.isDarkMode(context);

    return Positioned(
      left: MySize.defaultSpace,
      bottom: TDeviceUtils.getBottomNavigationBarHeight()+25,
      child: SmoothPageIndicator(
          effect: ExpandingDotsEffect(
              activeDotColor: dark ? MyColors.light: MyColors.dark,dotHeight:6
          ),

          controller: controller.pagecontroller,
          onDotClicked:controller.dotNavigationClick ,
          count: 3),
    );
  }
}