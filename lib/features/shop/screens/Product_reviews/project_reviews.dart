import 'package:ecommerce/common/widgets/appbar/appbar.dart';
import 'package:ecommerce/features/shop/screens/Product_reviews/Widgets/user_review_card.dart';
import 'package:ecommerce/utils/constants/sizes.dart';
import 'package:flutter/material.dart';

import '../../../../common/widgets/products/rating/rating_indicator.dart';
import 'Widgets/overall_progress_indicator.dart';


class ProjectReviews extends StatelessWidget {
  const ProjectReviews({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // App Bar
      appBar: const MyAppBar(
        title: Text('Reviews & Ratings'),showbackArrow: true,
      ),

      //Body
      body: SingleChildScrollView(
        child: Padding(padding: const EdgeInsets.all(MySize.defaultSpace),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const Text('Ratings and Reviews are verified and are from people who use the same type of device that you use.'),
            const SizedBox(height: MySize.spaceBtwItems,),
            
            const OverallRatingsIndicator(),
            const MyRatingBarIndicator(rating: 3.5,),
            Text('12,611',style: Theme.of(context).textTheme.bodySmall,),
            const SizedBox(height: MySize.spaceBtwSections,),
            const UserReviewCard(),
            const UserReviewCard(),
            const UserReviewCard(),
            const UserReviewCard(),


          ],
        ),


        ),

      ),


    );
  }
}






