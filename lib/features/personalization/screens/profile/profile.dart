import 'package:ecommerce/common/widgets/appbar/appbar.dart';
import 'package:ecommerce/common/widgets/images/my_circular_image.dart';
import 'package:ecommerce/common/widgets/texts/section_heading.dart';
import 'package:ecommerce/features/personalization/screens/profile/widgets/profile_menu.dart';
import 'package:ecommerce/utils/constants/sizes.dart';
import 'package:flutter/material.dart';
import 'package:iconsax/iconsax.dart';

import '../../../../utils/constants/image_strings.dart';


class ProfilePage extends StatelessWidget {
  const ProfilePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const MyAppBar(
        title: Text('Profile'),
        showbackArrow: true,


      ),

      //--Body
      body: SingleChildScrollView(
        child:
        Padding(
          padding: const EdgeInsets.all(MySize.defaultSpace),
          child: Column(children: [
            //Profile Pic
            
            SizedBox(
              width: double.infinity,
              child: Column(children: [

                const MyCircularImage(image: ImagesStrings.user,width: 80,height: 80,),
                TextButton(onPressed: (){}, child: const Text('Change Profile Picture'))




              ],),
            ),


            

            //Details
            const SizedBox(height: MySize.spaceBtwItems/2,),
            const Divider(),
            const SizedBox(height: MySize.spaceBtwItems,),
            //Heading Profile Info
            const SectionHeading(title: 'Profile Information',showActionButton: false,),
            const SizedBox(height: MySize.spaceBtwItems,),


            ProfileMenu(
              title: 'Name',
              value: 'Mohammad Hazique',
              onPressed: (){},
            ),
            ProfileMenu(onPressed: (){}, title: 'Username', value: 'Khan'),

            const SizedBox(height: MySize.spaceBtwItems,),
            const Divider(),
            const SizedBox(height: MySize.spaceBtwItems,),


            //Heading Personal info

            const SectionHeading(title: 'Personal Information',showActionButton: false,),
            const SizedBox(height: MySize.spaceBtwItems,),


            ProfileMenu(
              title: 'User Id',
              value: '45678',
              icon: Iconsax.copy,
              onPressed: (){},
            ),
            ProfileMenu(onPressed: (){}, title: 'E-mail', value: 'khanhazique04@gmail.com'),
            ProfileMenu(onPressed: (){}, title: 'Phone Number', value: '9026265830'),
            ProfileMenu(onPressed: (){}, title: 'Gender', value: 'Male'),
            ProfileMenu(onPressed: (){}, title: 'Date of Birth', value: '23 Jan 2004'),
            
            const Divider(),
            const SizedBox(height: MySize.spaceBtwItems,),
            
            Center(child: 
              TextButton(onPressed: (){}, child: const Text('Close Account',style: TextStyle(color: Colors.red),)),)





          ],),
        ) ,
      ),
    );
  }
}


