import 'package:flutter/material.dart';
import 'package:iconsax/iconsax.dart';

import '../../../utils/constants/image_strings.dart';
import '../images/my_circular_image.dart';


class UserProfileTile extends StatelessWidget {
  const UserProfileTile({
    super.key, required this.onPressed,

  });
  final VoidCallback onPressed;

  @override
  Widget build(BuildContext context) {
    return ListTile(
      leading: const MyCircularImage(image: ImagesStrings.user,width: 50,height: 50,padding: 0,),
      title: Text('Hazique Khan',style: Theme.of(context).textTheme.headlineSmall!.apply(color: Colors.white),),
      subtitle: Text('khanhazique04@gmail.com',maxLines:1,overflow:TextOverflow.ellipsis,style: Theme.of(context).textTheme.bodySmall!.apply(color: Colors.white),),
      trailing: IconButton(onPressed: onPressed, icon: const Icon(Iconsax.edit,color: Colors.white,)),
    );
  }
}