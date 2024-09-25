import 'package:ecommerce/common/widgets/custom_shapes/containers/rounded_container.dart';
import 'package:ecommerce/utils/helpers/helper_functions.dart';
import 'package:flutter/material.dart';

import '../../utils/constants/colors.dart';
import '../../utils/constants/enums.dart';
import '../../utils/constants/image_strings.dart';
import '../../utils/constants/sizes.dart';
import '../widgets/images/my_circular_image.dart';
import '../widgets/texts/brand_title_text_with_verificationbadge.dart';

class MyBrandCard extends StatelessWidget {
  const MyBrandCard({
    super.key,
    required this.showBorder,
    this.onTap,

  });

  final bool showBorder;
  final void Function()? onTap;

  @override
  Widget build(BuildContext context) {
    final dark =THelperFunctions.isDarkMode(context);
    return GestureDetector(
      onTap: onTap,
      //Container Design
      child: MyRoundedContainer(
        padding: const EdgeInsets.all(MySize.sm),
        showBorder: showBorder,
        backgroundColor: Colors.transparent,
        child: Row(
          children: [
            //ICon
            Flexible(
              child: MyCircularImage(
                image: ImagesStrings.clothIcon,
                isNetworkImage: false,
                backgroundColor: Colors.transparent,
                overlayColor: dark
                    ? Colors.white
                    : MyColors.black,
              ),
            ),

            const SizedBox(
              width: MySize.spaceBtwItems / 2,
            ),

            //Text
            Expanded(
              child: Column(
                mainAxisSize: MainAxisSize.min,
                mainAxisAlignment:
                MainAxisAlignment.start,
                crossAxisAlignment:
                CrossAxisAlignment.start,
                children: [
                  const BrandTitleTextWithVerificationbadge(
                    title: 'Nike',
                    brandtextSize: TextSizes.large,
                  ),
                  Text(
                    '256 products',
                    overflow: TextOverflow.ellipsis,
                    style: Theme.of(context)
                        .textTheme
                        .labelMedium,
                  )
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}