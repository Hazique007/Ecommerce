import 'package:flutter/material.dart';

import '../../../../../utils/constants/sizes.dart';

import '../../../../../utils/helpers/helper_functions.dart';



class OnboardingPage extends StatelessWidget {
  const OnboardingPage({

    super.key, required this.image, required this.title, required this.subtitle,
  });

  final String image,title,subtitle;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(MySize.defaultSpace),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,

        children: [
          Image(
              width: THelperFunctions.screenWidth() * 0.8,
              height: THelperFunctions.screenWidth() * 0.6,
              image: AssetImage(image)),

          const SizedBox(height: 80,),
          Text(
            title,
            style: Theme.of(context).textTheme.headlineMedium,
            textAlign: TextAlign.center,
          ),
          const SizedBox(height:MySize.spaceBtwItems,),

          Text(
            subtitle,
            style: Theme.of(context).textTheme.bodyMedium,
            textAlign: TextAlign.center,
          ),
        ],
      ),
    );
  }
}