import 'package:ecommerce/features/authentication/screens/password_configuration/reser_password.dart';
import 'package:ecommerce/utils/constants/sizes.dart';
import 'package:ecommerce/utils/constants/texts_strings.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:iconsax/iconsax.dart';

class ForgotPassword extends StatelessWidget {
  const ForgotPassword({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Padding(
          padding: const EdgeInsets.all(MySize.defaultSpace),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          //Heading
          Text(MyTexts.forgetPasswordTitle,style: Theme.of(context).textTheme.headlineMedium,),
          const SizedBox(height: MySize.spaceBtwItems,),
          Text(MyTexts.forgetPasswordSubTitle,style: Theme.of(context).textTheme.labelMedium,),
          const SizedBox(height: MySize.spaceBtwSections*2,),


          //TeftField
          TextFormField(
            decoration: const InputDecoration(
              labelText: MyTexts.email,
              prefixIcon: Icon(Iconsax.direct_right)
              

            ),
          ),
          const SizedBox(height: MySize.spaceBtwSections*2,),

          //SubmitBtn
          SizedBox(
              width: double.infinity,
              child: ElevatedButton(onPressed: ()=>Get.off(()=>const ReserPassword()), child: const Text(MyTexts.submit)))

        ],),

      ),

    );
  }
}
