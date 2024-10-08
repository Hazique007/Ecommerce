import 'package:flutter/material.dart';


class CircularContainer extends StatelessWidget {
  const CircularContainer({

    super.key,
    this.height=400,
    this.width=400,
    this.radius=400,
    this.padding=0,
    this.child,
    this.backgroundcolor=Colors.white,
    this.margin,
  });
  final double? height;
  final double? width;
  final double radius;
  final double padding;
  final Widget? child;
  final EdgeInsets? margin;
  final Color backgroundcolor;

  @override
  Widget build(BuildContext context) {
    return Container(
     width: width,
      height: height,
      margin: margin,
      padding: EdgeInsets.all(padding),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(radius),
        color: backgroundcolor
      ),
      child: child,


    );
  }
}