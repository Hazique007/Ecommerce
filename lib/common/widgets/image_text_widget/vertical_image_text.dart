import 'package:flutter/material.dart';

import '../../../utils/constants/colors.dart';
import '../../../utils/constants/sizes.dart';
import '../../../utils/helpers/helper_functions.dart';


class VerticalImageText extends StatelessWidget {
  const VerticalImageText({
    super.key,
    required this.image,
    required this.title,
    this.textColor=Colors.white,
    this.BackgroundColor,
    this.onTap,
  });

  final String image,title;
  final Color textColor;
  final Color ? BackgroundColor;
  final void Function()? onTap;


  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Padding(
        padding: const EdgeInsets.only(right: MySize.spaceBtwItems),
        child: Column(
          children: [

            //Circular Icon
            Container(
              width: 56,
              height: 56,
              padding: const EdgeInsets.all(MySize.sm),
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(100),
                  color:BackgroundColor ?? (THelperFunctions.isDarkMode(context) ? MyColors.black: Colors.white)
              ),
              child: Center(child: Image(image: AssetImage(image),fit: BoxFit.cover,color: THelperFunctions.isDarkMode(context) ? MyColors.light : MyColors.dark,)),
            ),
            const SizedBox(height: MySize.spaceBtwItems/4,),
            SizedBox(
                width:55,
                child: Center(child: Text(title,style: Theme.of(context).textTheme.labelMedium!.apply(color: textColor),maxLines: 1,overflow:TextOverflow.ellipsis ,)))

          ],
        ),
      ),
    );
  }
}