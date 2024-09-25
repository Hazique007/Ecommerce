import 'package:ecommerce/features/authentication/controllers%20onboarding/onboarding/onboarding_controllers.dart';
import 'package:flutter/material.dart';

import '../../../../../utils/constants/sizes.dart';
import '../../../../../utils/device/devicr_utility.dart';


class OnBoardingSkip extends StatelessWidget {
  const OnBoardingSkip({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Positioned(
        top: TDeviceUtils.getAppBarHeight(),
        right: MySize.defaultSpace,
        child:TextButton(onPressed: (){
          OnboardingControllers.insatnce.skipPage();
        }, child: const Text('Skip')));
  }
}