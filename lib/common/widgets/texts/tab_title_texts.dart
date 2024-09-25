import 'package:flutter/material.dart';

class TabtitileText extends StatelessWidget {
  const TabtitileText({
    super.key, required this.title,
  });

  final String title;

  @override
  Widget build(BuildContext context) {
    return Text(title,style: const TextStyle(fontSize: 15));
  }
}