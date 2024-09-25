import 'package:flutter/material.dart';

import '../../../../utils/constants/colors.dart';
import '../curved_edegs/curved_edges_widget.dart';
import 'circular_containers.dart';



class PrimaryHeaderContainer extends StatelessWidget {
  const PrimaryHeaderContainer({
    super.key,
    required this.child,
  });
  final Widget child;

  @override
  Widget build(BuildContext context) {
    return
      CurvedEdgesWidget(
        child: Container(
          color: MyColors.primary,
          padding: const EdgeInsets.only(bottom: 0),
          child:

                Stack(
                children: [
                  //Background custom shapes
                  Positioned(
                      top: -150,
                      right: -250,
                      child: CircularContainer(
                        backgroundcolor: MyColors.textWhite.withOpacity(0.1),
                      )),
                  Positioned(
                      top: 100,
                      right: -300,
                      child: CircularContainer(
                        backgroundcolor: MyColors.textWhite.withOpacity(0.1),
                      )),
                  child
                ],
                           ),
             ),


      );
  }
}
