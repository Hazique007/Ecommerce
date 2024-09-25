import 'package:ecommerce/features/authentication/screens/signup/verify_email.dart';
import 'package:ecommerce/features/authentication/screens/signup/widgets/terms_conditions.dart';
import 'package:ecommerce/utils/helpers/helper_functions.dart';
import 'package:ecommerce/utils/validators/validators.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get_storage/get_storage.dart';
import 'package:iconsax/iconsax.dart';


import '../../../../../utils/constants/sizes.dart';
import '../../../../../utils/constants/texts_strings.dart';
import '../../../controllers onboarding/signup/signup_controller.dart';


class SignUpForm extends StatefulWidget {
  const SignUpForm({
    super.key,

  });

  @override
  State<SignUpForm> createState() => _SignUpFormState();
}

class _SignUpFormState extends State<SignUpForm> {

  final controller = Get.put(SignupController());
  final _formKey = GlobalKey<FormState>();



  @override
  Widget build(BuildContext context) {

    final dark = THelperFunctions.isDarkMode(context);

    return Form(
      key:controller.signupFormKey,
        child: Column(

      children: [
        Row(
          children: [
          Expanded(
            child:
            TextFormField(
              validator:(value)=> TValidator.validateEmptyText('Firstname', value),
              expands:false,
              controller: controller.firstname,

              decoration:  InputDecoration(

                  focusedBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(12),
                      borderSide: BorderSide(
                          color: dark? Colors.white : Colors.black
                      )
                  ),


                  labelText: MyTexts.firstName,
                  labelStyle: TextStyle(
                      color:  dark ? Colors.white : Colors.black
                  ),
                  prefixIcon: const Icon(Iconsax.user)
              ),
            ),
          ),
          const SizedBox(width: MySize.spaceBtwInputFields,),

          Expanded(
            child: TextFormField(
              validator:(value)=> TValidator.validateEmptyText('Lastname', value),
              expands:false,
              controller: controller.lastname,

              decoration:   InputDecoration(
                  focusedBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(12),
                      borderSide: BorderSide(
                          color: dark? Colors.white : Colors.black
                      )
                  ),

                  labelText: MyTexts.lastName,
                  labelStyle: TextStyle(
                      color:  dark ? Colors.white : Colors.black
                  ),
                  prefixIcon: const Icon(Iconsax.user)
              ),
            ),
          )



        ],
        ),

        const SizedBox(height:  MySize.spaceBtwInputFields,),

        //Username
        TextFormField(
          expands:false,
          validator:(value)=> TValidator.validateEmptyText('Username', value),
          controller: controller.username,

          decoration:   InputDecoration(
              focusedBorder: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(12),
                  borderSide: BorderSide(
                      color: dark? Colors.white : Colors.black
                  )
              ),

              labelText: MyTexts.username,
              labelStyle: TextStyle(
                  color:  dark ? Colors.white : Colors.black
              ),
              prefixIcon: const Icon(Iconsax.user_edit)
          ),
        ),
        const SizedBox(height:  MySize.spaceBtwInputFields,),

        //Email

        TextFormField(
          controller: controller.email,
          validator: (value)=>TValidator.validateEmail(value),
          decoration:   InputDecoration(
              focusedBorder: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(12),
                  borderSide: BorderSide(
                      color: dark? Colors.white : Colors.black
                  )
              ),

              labelText: MyTexts.email,
              labelStyle: TextStyle(
                  color:  dark ? Colors.white : Colors.black
              ),
              prefixIcon: const Icon(Iconsax.direct)
          ),
        ),

        const SizedBox(height:  MySize.spaceBtwInputFields,),

        //Phonenumber

        TextFormField(
          controller: controller.phonenumber,
          validator: (value)=>TValidator.validatePhoneNumber(value),


          decoration:   InputDecoration(
              focusedBorder: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(12),
                  borderSide: BorderSide(
                      color: dark? Colors.white : Colors.black
                  )
              ),

              labelText: MyTexts.phoneNo,
              labelStyle: TextStyle(
                  color:  dark ? Colors.white : Colors.black
              ),
              prefixIcon: const Icon(Iconsax.call)
          ),
        ),
        const SizedBox(height:  MySize.spaceBtwInputFields,),

        //Password
        Obx(
           ()=> TextFormField(

            controller: controller.password,
            obscureText: controller.hidePassword.value,
            validator: (value)=>TValidator.validatePassword(value),

            decoration:   InputDecoration(


                focusedBorder: OutlineInputBorder(

                    borderRadius: BorderRadius.circular(12),
                    borderSide: BorderSide(
                        color: dark? Colors.white : Colors.black
                    )
                ),

                labelText: MyTexts.password,
                labelStyle: TextStyle(
                    color:  dark ? Colors.white : Colors.black
                ),
                prefixIcon: const Icon(Iconsax.password_check),
                suffixIcon: IconButton(onPressed: ()=>controller.hidePassword.value = !controller.hidePassword.value
                    , icon: controller.hidePassword.value ? Icon(Iconsax.eye_slash) : Icon(Iconsax.eye))
            ),
          ),
        ),
        const SizedBox(height:  MySize.spaceBtwInputFields,),

        //Terms and conditioms

        const TermsandConditions(),
        const SizedBox(height: MySize.spaceBtwSections,),

        //SignUp Btn
        SizedBox(
          width: double.infinity,
          child:

          ElevatedButton(onPressed:()=>controller.signup(), child: const Text(MyTexts.createAccount)),

        )


      ],
    )
    );
  }
}

