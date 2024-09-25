

import 'package:ecommerce/common/widgets/appbar/appbar.dart';
import 'package:ecommerce/common/widgets/custom_shapes/containers/primary_header_container.dart';
import 'package:ecommerce/common/widgets/list_tile/setting_menu_tile.dart';
import 'package:ecommerce/common/widgets/texts/section_heading.dart';
import 'package:ecommerce/features/personalization/screens/address/address.dart';
import 'package:ecommerce/features/personalization/screens/profile/profile.dart';
import 'package:ecommerce/features/shop/screens/order/order.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:iconsax/iconsax.dart';

import '../../../../common/widgets/list_tile/userprofile_tile.dart';
import '../../../../utils/constants/sizes.dart';


class SettingsScreen extends StatelessWidget {
  const SettingsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child:Column(children: [
          //--Header
          PrimaryHeaderContainer(child: Column(
            children: [
              MyAppBar(
                title: Text('Account',style: Theme.of(context).textTheme.headlineMedium!.apply(color: Colors.white),),
              ),

              //User Prodile Card
              
             UserProfileTile(
              onPressed: ()=> Get.to(()=>const ProfilePage()),

            ),
              const SizedBox(
                height: MySize.spaceBtwSections,
              ),



            ],),

              ),

          //Body

         Padding(padding: const EdgeInsets.all(MySize.defaultSpace),
              child: Column(children: [
                //Title of AccountSettings

                const SectionHeading(title: 'Account Settings',showActionButton: false,),
                const SizedBox(height: MySize.spaceBtwItems,),

                SettingMenuTile(
                    icon: Iconsax.safe_home,
                    title: 'My Addresses',
                    subtitle: 'Set Shopping delivery address',
                onTap: ()=> Get.to(()=>const Address()),),
                SettingMenuTile(
                  icon: Iconsax.shopping_cart,
                  title: 'My Cart',
                  subtitle: 'Add, remove products annd move to checkout',
                  onTap: (){},),
                SettingMenuTile(
                  icon: Iconsax.bag_tick,
                  title: 'My Orders',
                  subtitle: 'In-progress and Completed Orders',
                  onTap: ()=>Get.to(()=>const OrderScreen()),),
                SettingMenuTile(
                  icon: Iconsax.bank,
                  title: 'Bank Account',
                  subtitle: 'Withdraw balance to registered bank account',
                  onTap: (){},),
                SettingMenuTile(
                  icon: Iconsax.discount_shape,
                  title: 'My Coupons',
                  subtitle: 'List of all the discounted coupons',
                  onTap: (){},),
                SettingMenuTile(
                  icon: Iconsax.notification,
                  title: 'Notifications',
                  subtitle: 'Set any kind of notification message',
                  onTap: (){},),
                SettingMenuTile(
                  icon: Iconsax.security_card,
                  title: 'Account Privacy',
                  subtitle: 'Manage data usage and connected accounts',
                  onTap: (){},),

                //---App Settings

                const SizedBox(height: MySize.spaceBtwSections,),
                const SectionHeading(title: 'App Settings',showActionButton: false,),
                const SizedBox(height: MySize.spaceBtwItems,),
                const SettingMenuTile(
                    icon: Iconsax.document_upload,
                    title: 'Load Data',
                    subtitle: 'Upload data to your Cloud Firebase'),
                SettingMenuTile(
                    icon: Iconsax.location,
                    title: 'Geolocation',
                    subtitle: 'Set recommendation based on location',
                    trailing: Switch(value: true, onChanged: (value){}),
                ),
                SettingMenuTile(
                  icon: Iconsax.security_user,
                  title: 'Safe Mode',
                  subtitle: 'Search result is safe for all ages',
                  trailing: Switch(value: false, onChanged: (value){}),
                ),
                SettingMenuTile(
                  icon: Iconsax.image,
                  title: 'HD Image Quality',
                  subtitle: 'Set image quality to be seen',
                  trailing: Switch(value: false, onChanged: (value){}),
                ),












              ],
          ))
          //--Body

        ],)
        ,
      ),
    );
  }
}


