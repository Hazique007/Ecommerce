import 'package:ecommerce/features/authentication/controllers%20onboarding/onboarding/onboarding_controllers.dart';
import 'package:ecommerce/features/authentication/screens/onboarding/widgets/onboarding_btn.dart';
import 'package:ecommerce/features/authentication/screens/onboarding/widgets/onboarding_navigation.dart';
import 'package:ecommerce/features/authentication/screens/onboarding/widgets/onboarding_page.dart';
import 'package:ecommerce/features/authentication/screens/onboarding/widgets/onboarding_skip.dart';

import 'package:get/get.dart';

import 'package:ecommerce/utils/constants/image_strings.dart';


import 'package:ecommerce/utils/constants/texts_strings.dart';


import 'package:flutter/material.dart';

class OnBoardingScreen extends StatelessWidget {
  const OnBoardingScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final controller = Get.put(OnboardingControllers());
    return Scaffold(
      body: Stack(
        children: [
          ///Horizontal Scrollable PAges
          PageView(
            controller:controller.pagecontroller ,
            onPageChanged: controller.UpdatePageIndicator,
            children: const [
              OnboardingPage(
                image:ImagesStrings.onBoardingImage1 ,
                title: MyTexts.onBoardingTitle1,
                subtitle: MyTexts.onBoardingSubTitle1,
              ),

              OnboardingPage(
                image:ImagesStrings.onBoardingImage2 ,
                title: MyTexts.onBoardingTitle2,
                subtitle: MyTexts.onBoardingSubTitle2,
              ),
              OnboardingPage(
                image:ImagesStrings.onBoardingImage3 ,
                title: MyTexts.onBoardingTitle3,
                subtitle: MyTexts.onBoardingSubTitle3,
              ),

            ],
          ),
          

          ///Skip Button
         const OnBoardingSkip(),

          /// Dot Navigation SmoothPageIndicator
        const  OnBoardingNavigationDot(),

          /// Circular Button
          const OnboardingNextbtn(),
        ],
      ),
    );
  }
}





