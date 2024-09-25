import 'package:ecommerce/common/widgets/success_screen/success_screen.dart';
import 'package:ecommerce/data/reposetories/repositories.authentication/authentication_repository.dart';
import 'package:ecommerce/features/authentication/screens/login/login.dart';
import 'package:ecommerce/utils/constants/image_strings.dart';
import 'package:ecommerce/utils/constants/sizes.dart';
import 'package:ecommerce/utils/constants/texts_strings.dart';
import 'package:ecommerce/utils/helpers/helper_functions.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../controllers onboarding/signup/verify_email_controller.dart';




class VerifyEmail extends StatelessWidget {
  const VerifyEmail({super.key, this.email});

  final String ? email;

  @override
  Widget build(BuildContext context) {
    final controller = Get.put(VerifyEmailController());
    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: false,
        actions: [
          IconButton(onPressed:()=>AuthenticationRepository.instance.screenRedirect, icon: const Icon(CupertinoIcons.clear))
          
        ],
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(MySize.defaultSpace),
          child: Column(
            
            children: [
              //Image
              Image(image: const AssetImage(ImagesStrings.deliveredEmailIllustration),width: THelperFunctions.screenWidth()*0.6,),
             const SizedBox(height: MySize.spaceBtwSections,),
              //Title and Subtitile
              Text(MyTexts.confirmEmail,style: Theme.of(context).textTheme.headlineMedium,textAlign: TextAlign.center,),
              const SizedBox(height: MySize.spaceBtwItems),
              Text(email ?? '',style: Theme.of(context).textTheme.labelLarge,textAlign: TextAlign.center,),
              const SizedBox(height: MySize.spaceBtwItems),
              Text(MyTexts.confirmEmailSubTitle,style: Theme.of(context).textTheme.labelMedium,textAlign: TextAlign.center,),
              const SizedBox(height: MySize.spaceBtwSections,),

              //Buttons
              SizedBox(
                width: double.infinity,
                child: ElevatedButton(
                    onPressed:()=>controller.checkEmailverificationStatus(),
                    child: const Text(MyTexts.tContinue)),
              ),
              const SizedBox(height: MySize.spaceBtwItems),
              SizedBox(
                  width: double.infinity,
                  child: TextButton(onPressed: ()=>controller.sendEmailVErification, child: const Text(MyTexts.resendEmail)))
              
              




              
              //Buttons
              
              
              
              
            ],
          ),
        



      ),
    )
    );
  }
}

