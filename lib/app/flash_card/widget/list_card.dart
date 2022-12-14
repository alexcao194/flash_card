import 'package:flutter/material.dart';

class ListCard extends StatefulWidget {
  const ListCard({Key? key}) : super(key: key);

  @override
  State<ListCard> createState() => _ListCardState();
}

class _ListCardState extends State<ListCard> {

  late FixedExtentScrollController controller;

  @override
  void initState() {
    super.initState();
    controller = FixedExtentScrollController(
        initialItem: 1
    );
  }

  @override
  void dispose() {
    controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return RotatedBox(
      quarterTurns: 1,
      child: SizedBox(
        width: size.width * 0.85,
        child: ListWheelScrollView(
          controller: controller,
          diameterRatio: 100,
          itemExtent: size.width * 0.85,
          physics: const FixedExtentScrollPhysics(

          ),
          children: buildBody(size)
        ),
      ),
    );
  }

  List<Widget> buildBody(Size size) {
    List<Widget> result = [];
    for(int i = 0; i < 5; i++) {
      result.add(
          Padding(
            padding: const EdgeInsets.symmetric(vertical: 8.0),
            child: Container(
              width: size.width * 0.7,
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(15.0),
                  color: Colors.white
              ),
              child: const RotatedBox(
                quarterTurns: 3,
                child: Center(
                  child: Text('Flutter', style: TextStyle(color: Colors.black, fontWeight: FontWeight.w700, fontSize: 30)),
                ),
              ),
            ),
          )
      );
    }
    return result;
  }

}
