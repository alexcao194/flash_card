import 'package:flutter/material.dart';

class Counter extends StatelessWidget {
  const Counter({Key? key, required this.color, required this.counter, required this.label}) : super(key: key);

  final Color color;
  final int counter;
  final String label;

  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    return Column(
      children: [
        Container(
          height: size.width * 0.2,
          width: size.width * 0.2,
          decoration: BoxDecoration(
              color: color,
              borderRadius: BorderRadius.circular(15.0)
          ),
          child: Center(child: Text(counter.toString(),
              style: const TextStyle(fontSize: 28, color: Colors.white))),
        ),
        Padding(
          padding: const EdgeInsets.only(top: 8.0),
          child: Text(label, style: const TextStyle(color: Colors.white)),
        )
      ],
    );
  }
}
