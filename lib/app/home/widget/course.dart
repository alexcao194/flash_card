import 'package:flash_card/config/app_color.dart';
import 'package:flutter/material.dart';

class Course extends StatelessWidget {
  const Course({Key? key, required this.label, required this.child, this.onTap}) : super(key: key);

  final String label;
  final Widget child;
  final VoidCallback? onTap;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(25),
        ),
        child: Column(
          children: [
            Expanded(child: child),
            Padding(
              padding: const EdgeInsets.only(bottom: 32.0),
              child: Text(label, style: const TextStyle(fontSize: 20)),
            )
          ],
        ),
      ),
    );
  }
}
