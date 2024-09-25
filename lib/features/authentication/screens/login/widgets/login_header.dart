import 'package:flutter/material.dart';

import '../../../../../utils/constants/image_strings.dart';
import '../../../../../utils/constants/sizes.dart';
import '../../../../../utils/constants/texts_strings.dart';


class LoginHeader extends StatelessWidget {
  const LoginHeader({
    super.key,
    required this.dark,
  });

  final bool dark;

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Image(
            height: 150,
            image: dark
                ? const AssetImage(ImagesStrings.lightAppLogo)
                : const AssetImage(ImagesStrings.darkAppLogo)),
        Text(MyTexts.loginTitle,style: Theme.of(context).textTheme.headlineMedium,),
        const SizedBox(height: MySize.sm,),
        Text(MyTexts.loginSubTitle,style: Theme.of(context).textTheme.bodyMedium)       ,




      ],
    );
  }
}