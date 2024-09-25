import 'package:ecommerce/features/shop/screens/Product_reviews/Widgets/progress_idicator.dart';
import 'package:flutter/material.dart';


class OverallRatingsIndicator extends StatelessWidget {
  const OverallRatingsIndicator({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Expanded(
            flex: 5,
            child: Text('4.8',style: Theme.of(context).textTheme.displayLarge,)),
        const Expanded(
          flex: 7,

          child: Column(
            children: [
              RatingProgressIndicator(text: '5',value: 1.0),
              RatingProgressIndicator(text: '4',value: 0.8),
              RatingProgressIndicator(text: '3',value: 0.6),
              RatingProgressIndicator(text: '2',value: 0.4),
              RatingProgressIndicator(text: '1',value: 0.2),
            ],
          ),
        )
      ],
    );
  }
}