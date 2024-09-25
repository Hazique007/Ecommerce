import 'package:ecommerce/features/authentication/screens/password_configuration/forgot_password.dart';
import 'package:ecommerce/features/authentication/screens/signup/signup.dart';
import 'package:ecommerce/navigation_menu.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:iconsax/iconsax.dart';

import '../../../../../utils/constants/sizes.dart';
import '../../../../../utils/constants/texts_strings.dart';


class LoginForm extends StatelessWidget {
  const LoginForm({
    super.key,
    required this.dark,
  });

  final bool dark;

  @override
  Widget build(BuildContext context) {
    return Form(


      child:

      Padding(
        padding: const EdgeInsets.only(top: MySize.spaceBtwSections),
        child: Column(
          children: [
            //email
            TextFormField(



              decoration: InputDecoration(

                  focusedBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(12),
                      borderSide: BorderSide(
                          color: dark? Colors.white : Colors.black
                      )
                  ),
                  prefixIcon: const Icon(Iconsax.direct_right),
                  labelText: MyTexts.email,
                  labelStyle: TextStyle(color: dark ? Colors.white : Colors.black)
              ),
            ),
            const SizedBox(height: MySize.spaceBtwInputFields,),
            TextFormField(

              decoration: InputDecoration(


                focusedBorder: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(12),
                  borderSide: BorderSide(
                      color: dark? Colors.white : Colors.black
                  )
                ),
                  prefixIcon: const Icon(Iconsax.password_check),
                  labelText: MyTexts.password,
                  labelStyle: TextStyle(
                      color: dark ? Colors.white : Colors.black
                  ),
                  suffixIcon: const Icon(Iconsax.eye_slash)
              ),
            ),
            const SizedBox(height: MySize.spaceBtwInputFields/2,),

            //Remember Me and Forgot Password

            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                //Remember me
                Row(

                  children: [
                    Checkbox(value: true, onChanged: (value){}),
                    const Text(MyTexts.rememberMe,style: TextStyle(fontSize: 12),)
                  ],
                ),
                //ForgotPassword
                TextButton(onPressed: ()=>Get.to(()=>const ForgotPassword()), child: const Text(MyTexts.forgetPassword))

                
              ],
            ),
            const SizedBox(height: MySize.spaceBtwSections,),

            //Sign In Button
            SizedBox(
                width:double.infinity ,
                child: ElevatedButton(onPressed: ()=>Get.to(()=>const NavigationMenu()), child: const Text(MyTexts.signIn))),

            const SizedBox(height: MySize.spaceBtwItems,),

            //Create account btn

            SizedBox(
                width:double.infinity ,
                child: OutlinedButton(onPressed: ()=>Get.to(()=>const RegisterPage()), child: const Text(MyTexts.createAccount))),
            const SizedBox(height: MySize.spaceBtwSections/2,),







          ],),
      ),
    );
  }
}