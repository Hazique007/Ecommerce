import 'package:ecommerce/common/widgets/login_signup/form_divider.dart';
import 'package:ecommerce/common/widgets/login_signup/social_btns.dart';
import 'package:ecommerce/features/authentication/screens/signup/widgets/signup_form.dart';

import 'package:ecommerce/utils/constants/sizes.dart';
import 'package:ecommerce/utils/helpers/helper_functions.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';


import '../../../../utils/constants/texts_strings.dart';


class RegisterPage extends StatelessWidget {
  const RegisterPage({super.key});

  @override
  Widget build(BuildContext context) {
    final  dark = THelperFunctions.isDarkMode(context);
    return GestureDetector(
      onTap: (){
        FocusScopeNode currentFocus=  FocusScope.of(context);
        if(!currentFocus.hasPrimaryFocus){
          currentFocus.unfocus();
        }
      },
      child: Scaffold(
        appBar: AppBar(),
        body: SingleChildScrollView(
          keyboardDismissBehavior:ScrollViewKeyboardDismissBehavior.onDrag ,
          child: Padding
            (padding: const EdgeInsets.all(MySize.defaultSpace),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [

                //Title
                Text(MyTexts.signupTitle,style: Theme.of(context).textTheme.headlineMedium,),
                const SizedBox(height: MySize.spaceBtwSections,),

                //Form

                  const SignUpForm(),
                  const SizedBox(height: MySize.spaceBtwSections,),
                  //Divider
                  DividerForm(dark: dark, text: MyTexts.orSignUpWith.capitalize!),
                  const SizedBox(height: MySize.spaceBtwSections/2,),

                  //Social btns
                  const SocialButtons()



            ],),

          ),


        ),

      ),
    );
  }
}


