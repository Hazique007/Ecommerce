import 'package:ecommerce/utils/helpers/helper_functions.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../../../../utils/constants/colors.dart';
import '../../../../../utils/constants/sizes.dart';
import '../../../../../utils/constants/texts_strings.dart';
import '../../../controllers onboarding/signup/signup_controller.dart';

class TermsandConditions extends StatelessWidget {
  const TermsandConditions({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    final controller = Get.put(SignupController());
    final dark = THelperFunctions.isDarkMode(context);
    return Row(
      children: [
        SizedBox(
            width: 24,
            height: 24,
            child: Obx(() => Checkbox(
                value: controller.privacyPolicy.value,
                onChanged: (value) => controller.privacyPolicy.value =
                    !controller.privacyPolicy.value))),
        const SizedBox(
          width: MySize.spaceBtwItems,
        ),
        Text.rich(TextSpan(children: [
          const TextSpan(
            text: '${MyTexts.iAgreeTo} ',
            style: TextStyle(fontSize: 12),
          ),
          TextSpan(
            text: '${MyTexts.privacyPolicy} ',
            style: const TextStyle(fontSize: 12).apply(
                color: dark ? Colors.white : MyColors.primary,
                decoration: TextDecoration.underline,
                decorationColor: dark ? Colors.white : MyColors.primary),
          ),
          const TextSpan(
              text: '${MyTexts.and} ', style: TextStyle(fontSize: 11)),
          TextSpan(
            text: MyTexts.termsOfUse,
            style: const TextStyle(fontSize: 12).apply(
                color: dark ? Colors.white : MyColors.primary,
                decoration: TextDecoration.underline,
                decorationColor: dark ? Colors.white : MyColors.primary),
          ),
        ]))
      ],
    );
  }
}
