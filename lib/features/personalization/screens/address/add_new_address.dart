import 'package:ecommerce/common/widgets/appbar/appbar.dart';
import 'package:ecommerce/utils/constants/sizes.dart';
import 'package:flutter/material.dart';
import 'package:iconsax/iconsax.dart';

class AddNewAddress extends StatelessWidget {
  const AddNewAddress({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const MyAppBar(
        showbackArrow:true  ,
        title: Text('Add new Address'),
      ),
      body: SingleChildScrollView(
        child: Padding(padding: const EdgeInsets.all(MySize.defaultSpace),
          child: Form(

            child: Column(
              children: [
                TextFormField(
                  decoration: const InputDecoration(
                    prefixIcon: Icon(Iconsax.user),labelText: 'Name'
                  ),


                ),
                const SizedBox(height: MySize.spaceBtwInputFields,),
                TextFormField(
                  decoration: const InputDecoration(
                      prefixIcon: Icon(Iconsax.mobile),labelText: 'Phone Number'
                  ),


                ),
                const SizedBox(height: MySize.spaceBtwInputFields,),
                Row(
                  children: [
                    Expanded(
                      
                      child: TextFormField(
                        decoration: const InputDecoration(
                            prefixIcon: Icon(Iconsax.building_31),labelText: 'Street'
                        ),


                      ),

                    ),
                    const SizedBox(width: MySize.spaceBtwInputFields,),

                    Expanded(
                      child: TextFormField(
                        decoration: const InputDecoration(
                            prefixIcon: Icon(Iconsax.code),labelText: 'Postal Code'
                        ),
                      
                      
                      ),
                    ),
                  ],
                ),
                const SizedBox(height: MySize.spaceBtwInputFields,),
                Row(
                  children: [
                    Expanded(

                      child: TextFormField(
                        decoration: const InputDecoration(
                            prefixIcon: Icon(Iconsax.building),labelText: 'City'
                        ),


                      ),

                    ),
                    const SizedBox(width: MySize.spaceBtwInputFields,),

                    Expanded(
                      child: TextFormField(
                        decoration: const InputDecoration(
                            prefixIcon: Icon(Iconsax.activity),labelText: 'State'
                        ),


                      ),
                    ),

                  ],
                ),
                const SizedBox(height: MySize.spaceBtwInputFields,),
                TextFormField(
                  decoration: const InputDecoration(
                    prefixIcon: Icon(Iconsax.global),labelText: 'Country'
                  ),
                ),
                const SizedBox(height: MySize.defaultSpace,),
                SizedBox(
                    width: double.infinity,
                    child: ElevatedButton(onPressed: (){}, child: const Text('Save')))







              ],
            ),
          ),



        ),
      ),


    );
  }
}
