import 'package:flutter/material.dart';


class MyCustomCurvedEdges extends CustomClipper<Path>{
  @override
  Path getClip(Size size) {
    var path = Path();
    path.lineTo(0, size.height);
    final firstcurve = Offset(0, size.height-20);
    final lastcurve = Offset(30, size.height-20);
    path.quadraticBezierTo(firstcurve.dx, firstcurve.dy, lastcurve.dx, lastcurve.dy);

    final SecondFirstCurve = Offset(0,size.height-20);
    final SecondLastCurve = Offset(size.width-30, size.height-20);
    path.quadraticBezierTo(SecondFirstCurve.dx, SecondFirstCurve.dy, SecondLastCurve.dx, SecondLastCurve.dy);

    final Thirdfirstcurve = Offset(size.width, size.height-20);
    final Thirdlastcurve = Offset(size.width, size.height);
    path.quadraticBezierTo(Thirdfirstcurve.dx, Thirdfirstcurve.dy, Thirdlastcurve.dx, Thirdlastcurve.dy);








    path.lineTo(size.width, 0);
    path.close();
    return path;
  }

  @override
  bool shouldReclip(covariant CustomClipper<Path> oldClipper) {
    return true;
  }

  

}