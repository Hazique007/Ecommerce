import 'package:ecommerce/utils/constants/sizes.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../../../utils/constants/image_strings.dart';
import '../../../../utils/constants/texts_strings.dart';
import '../../../../utils/helpers/helper_functions.dart';



class ReserPassword extends StatelessWidget {
  const ReserPassword({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: false,
        actions: [
          IconButton(onPressed: ()=>Get.back(), icon: const Icon(CupertinoIcons.clear))
        ],
      ),
      body:  Padding(
          padding: const EdgeInsets.all(MySize.defaultSpace),
        child: Column(
          children: [
            //Image with 60% of screen ratio
            Image(
              image: const AssetImage(ImagesStrings.deliveredEmailIllustration),
              width: THelperFunctions.screenWidth()*0.6
            ),
            const SizedBox(
              height: MySize.spaceBtwSections,
            ),
            //Title and Subtitile
            Text(
              MyTexts.changeYourPasswordTitle,
              style: Theme.of(context).textTheme.headlineMedium,
              textAlign: TextAlign.center,
            ),
            const SizedBox(height: MySize.spaceBtwItems),
            Text(
              MyTexts.changeYourPasswordSubTitle,
              style: Theme.of(context).textTheme.labelMedium,
              textAlign: TextAlign.center,
            ),
            const SizedBox(
              height: MySize.spaceBtwSections,
            ),

            //Button
            SizedBox(
              width: double.infinity,
              child: ElevatedButton(
                  onPressed: (){}, child: const Text(MyTexts.done)),
            ),

            const SizedBox(height: MySize.spaceBtwItems,),

            SizedBox(
              width: double.infinity,
              child: TextButton(
                  onPressed: (){}, child: const Text(MyTexts.resendEmail)),
            ),


            
            







        ],),


      ),

    );
  }
}
