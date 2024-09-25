import 'package:ecommerce/common/widgets/appbar/appbar.dart';
import 'package:ecommerce/features/personalization/screens/address/add_new_address.dart';
import 'package:ecommerce/features/personalization/screens/address/widgets/single_address.dart';
import 'package:ecommerce/utils/constants/colors.dart';
import 'package:ecommerce/utils/constants/sizes.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:iconsax/iconsax.dart';

class Address extends StatelessWidget {
  const Address({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButton:
          FloatingActionButton(onPressed: () => Get.to(() => const AddNewAddress()),
              backgroundColor: MyColors.primary ,
            child:const Icon(Iconsax.add,color: Colors.white,),),
      appBar: MyAppBar(
        showbackArrow: true,
            title: Text('Addresses',style: Theme.of(context).textTheme.headlineSmall,),

      ),
      body: const SingleChildScrollView(
        child: Padding(padding: EdgeInsets.all(MySize.defaultSpace),
        child: Column(
          children: [
            SingleAddress(selectedAddress:false ),
            SingleAddress(selectedAddress:true ),


          ],
        ),

        ),
      ),
    );
  }
}
