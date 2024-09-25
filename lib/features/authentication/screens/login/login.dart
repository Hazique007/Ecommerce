import 'package:ecommerce/common/styles/spacing_styles.dart';
import 'package:ecommerce/features/authentication/screens/login/widgets/login_form.dart';
import 'package:ecommerce/features/authentication/screens/login/widgets/login_header.dart';

import 'package:ecommerce/utils/constants/sizes.dart';
import 'package:ecommerce/utils/constants/texts_strings.dart';
import 'package:ecommerce/utils/helpers/helper_functions.dart';
import 'package:flutter/material.dart';


import '../../../../common/widgets/login_signup/form_divider.dart';
import '../../../../common/widgets/login_signup/social_btns.dart';

class LoginPage extends StatelessWidget {
  const LoginPage({super.key});

  @override
  Widget build(BuildContext context) {
    final dark = THelperFunctions.isDarkMode(context);
    return Scaffold(
      body: SingleChildScrollView(
        child: Padding(
          padding: MySpacingStyles.paddingWithAppBArHeight*0.6,
          child: Column(
            children: [
              //Logo,Title,Subtitle
              LoginHeader(dark: dark),
              //Form
              LoginForm(dark: dark),
              //Divider
              DividerForm(dark: dark,text: MyTexts.orSignInWith,),
              const SizedBox(height: MySize.spaceBtwSections,),
              //Footer
              const SocialButtons()




            ],
          ),
        ),
      ),
    );
  }
}







