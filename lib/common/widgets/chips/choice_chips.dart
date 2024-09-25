import 'package:ecommerce/common/widgets/custom_shapes/containers/circular_containers.dart';
import 'package:ecommerce/utils/helpers/helper_functions.dart';
import 'package:flutter/material.dart';

class MyChoiceCHip extends StatelessWidget {
  const MyChoiceCHip({
    super.key,
    required this.text,
    required this.selected,
    this.onSelected,
  });

  final String text;
  final bool selected;
  final void Function(bool)? onSelected;

  @override
  Widget build(BuildContext context) {
    final isColor =THelperFunctions.getColor(text);
    return Theme(
      data: Theme.of(context).copyWith(canvasColor:Colors.transparent ),
      child: ChoiceChip(
        label: THelperFunctions.getColor(text) != null ? const SizedBox() : Text(text),
        selected: selected,
        onSelected: onSelected,
        labelStyle: TextStyle(color: selected? Colors.white : Colors.grey),
        avatar: THelperFunctions.getColor(text) != null ?
        CircularContainer(
          width: 50,
          height: 50,
          backgroundcolor:THelperFunctions.getColor(text)! ,
        ) : null,
        shape: isColor != null ? const CircleBorder() : null,
        backgroundColor: isColor != null ? THelperFunctions.getColor(text) : null,
        labelPadding: isColor != null ? const EdgeInsets.all(0) : null,
        padding: isColor != null ? const EdgeInsets.all(0) : null,
        selectedColor: Colors.green,
      ),
    );
  }
}