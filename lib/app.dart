import 'package:ecommerce/bindings/general_bindings.dart';
import 'package:ecommerce/features/authentication/screens/onboarding/onboarding.dart';
import 'package:ecommerce/utils/constants/colors.dart';
import 'package:ecommerce/utils/theme/theme.dart';
import 'package:flutter/material.dart';
import 'package:get/get_navigation/src/root/get_material_app.dart';


class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      initialBinding: GeneralBindings(),
      debugShowCheckedModeBanner: false,
      themeMode: ThemeMode.system,
      theme:AppTheme.lightTheme ,
      darkTheme: AppTheme.darkTheme,
      home:  Scaffold(
        backgroundColor: MyColors.primary,
        body: Center(
          child:
          CircularProgressIndicator(color: Colors.white,),
        ),

      )
    );
  }
}
