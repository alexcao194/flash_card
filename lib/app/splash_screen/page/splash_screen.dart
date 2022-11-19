import 'package:flash_card/config/app_color.dart';
import 'package:flash_card/config/app_font.dart';
import 'package:flutter/material.dart';

class SplashScreen extends StatelessWidget {
  const SplashScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColor.blue,
      body: SizedBox(
        width: double.maxFinite,
        height: double.maxFinite,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: const [
            Text('Flash Card',
                style: TextStyle(
                fontSize: 27,
                color: Colors.white,
                fontFamily: AppFont.alexandria,
                fontWeight: FontWeight.w700
              )),
            Text('@alexcao', style: TextStyle(color: Colors.white))
          ],
        ),
      ),
    );
  }
}
