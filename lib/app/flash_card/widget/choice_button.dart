import 'package:flash_card/config/app_color.dart';
import 'package:flutter/material.dart';

class ChoiceButton extends StatelessWidget {
  const ChoiceButton({
    Key? key,
    required this.color,
    required this.label
  }) : super(key: key);

  final Color color;
  final String label;

  @override
  Widget build(BuildContext context) {
    return ClipRRect(
      borderRadius: BorderRadius.circular(50.0),
      child: TextButton(
          onPressed: () {},
          child: Container(
            height: 45,
            width: double.maxFinite,
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(50.0),
                color: color
            ),
            child: Center(child: Text(
                label,
                style: const TextStyle(color: Colors.white, fontWeight: FontWeight.w700)
            )),
          )
      ),
    );
  }
}