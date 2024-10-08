
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../../../../common/widgets/image_text_widget/vertical_image_text.dart';
import '../../../../../utils/constants/image_strings.dart';
import '../../sub_category/sub_catoegory.dart';


class HomeCategories extends StatelessWidget {
  const HomeCategories({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 80,
      child: ListView.builder(
          shrinkWrap: true,
          itemCount:6,
          scrollDirection: Axis.horizontal,
          itemBuilder: (_,index) {
            return

              VerticalImageText(
                image:ImagesStrings.shoeIcon ,
                title: 'Shoes',
                onTap: ()=>Get.to(()=>const SubCatoegory()),


              );



          }),
    );
  }
}
