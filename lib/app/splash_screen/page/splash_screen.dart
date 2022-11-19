import 'package:flash_card/config/app_color.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class SplashScreen extends StatelessWidget {
  const SplashScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColor.blue,
      body: Center(
        child: Text('Flash Card',
            style: TextStyle(
            fontSize: 27,
            color: Colors.white
          )),
      ),
    );
  }
}
