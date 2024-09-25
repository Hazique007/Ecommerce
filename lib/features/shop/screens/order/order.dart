import 'package:ecommerce/common/widgets/appbar/appbar.dart';
import 'package:ecommerce/features/shop/screens/order/widgets/orderl_list.dart';
import 'package:ecommerce/utils/constants/sizes.dart';
import 'package:flutter/material.dart';


class OrderScreen extends StatelessWidget {
  const OrderScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: MyAppBar(
        title: Text('My Orders',style: Theme.of(context).textTheme.headlineSmall,),showbackArrow: true,
      ),
      body: const Padding(padding: EdgeInsets.all(MySize.defaultSpace),
      //Orders
      child: OrderlListItems(),
      ),
    );
  }
}
