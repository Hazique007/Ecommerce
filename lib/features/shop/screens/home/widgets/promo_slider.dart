import 'package:carousel_slider/carousel_slider.dart';
import 'package:ecommerce/features/shop/controllers/home_controller.dart';
import 'package:ecommerce/utils/constants/colors.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../../../../common/widgets/custom_shapes/containers/circular_containers.dart';
import '../../../../../common/widgets/images/my_rounded_image.dart';
import '../../../../../utils/constants/sizes.dart';

class PromoSlider extends StatelessWidget {
  const PromoSlider({
    super.key, required this.banners,
  });

  final List<String> banners;

  @override
  Widget build(BuildContext context) {
    final controller = Get.put(HomeController());
    return Column(
      children: [
        CarouselSlider(
            items:banners.map((url)=>MyRoundedImage(imageurl: url)).toList(),
            options: CarouselOptions(
          onPageChanged: (index,_)=>controller.updatePageIndicator(index),
            viewportFraction: 1

        )),
        const SizedBox(height: MySize.spaceBtwItems,),
        Obx(
            ()=> Row(
              mainAxisSize: MainAxisSize.min,
            children: [
              for(int i=0; i<banners.length; i++)
                CircularContainer(
                  width: 20.0,
                  height: 4.0,
                  backgroundcolor: controller.carouselCurrentIndex.value == i ? MyColors.primary : MyColors.grey,
                  margin: const EdgeInsets.only(right: 10),
                ),
          
          
            ],
          ),
        )
      ],
    );
  }
}