import 'package:flash_card/app/home/widget/counter.dart';
import 'package:flash_card/config/app_color.dart';
import 'package:flash_card/config/app_path.dart';
import 'package:flash_card/service/app_router/app_router.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import '../widget/course.dart';

class HomeSC extends StatelessWidget {
  const HomeSC({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColor.blue,
      body: Stack(children: [
        Padding(
          padding: const EdgeInsets.all(20.0),
          child: Column(
            children: [
              Row(children: [
                SizedBox(
                  //padding: EdgeInsets.all(20.0),
                  width: 300,
                  height: 110,
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: const [
                      SizedBox(height: 20),
                      Text('Hello', style: TextStyle(fontSize: 30, fontWeight: FontWeight.w500, color: Colors.white),
                      ),
                      Text(
                        "Let's start together",
                        style: TextStyle(fontSize: 17, color: Colors.white),
                      ),
                    ],
                  ),
                ),
                Container(
                  height: 50,
                  width: 50,
                  decoration: const BoxDecoration(
                    shape: BoxShape.circle,
                    color: Colors.white,
                  ),
                  child: ClipRRect(
                    borderRadius: BorderRadius.circular(100.0),
                    child: Image.asset(AppPath.avatarImage, fit: BoxFit.cover)
                  ),
                ),
              ]),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: const [
                  Counter(
                    label: 'Memorized',
                    color: AppColor.orange,
                    counter: 5,
                  ),
                  Counter(
                    label: 'Added',
                    color: AppColor.violet,
                    counter: 12,
                  ),
                  Counter(
                    label: 'Approved',
                    color: AppColor.green,
                    counter: 137,
                  )
                ],
              ),
              const SizedBox(height: 40),
              Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const Text(
                    "Let's start",
                    style: TextStyle(
                      fontSize: 23,
                      color: Colors.white,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  const SizedBox(width: 50),
                  TextButton(
                      onPressed: () {},
                      child: const Text(
                        'See all',
                        style: TextStyle(
                          fontSize: 15,
                          color: Colors.blue,
                        ),
                      ))
                ],
              ),
              Expanded(
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    Expanded(child: Course(
                      label: 'Learning',
                      child: SvgPicture.asset(AppPath.learnIcon),
                      onTap: () {
                        AppRouter.navigatorKey.currentState?.pushNamed(AppRoutes.flashCard);
                      },
                    )),
                    const SizedBox(width: 20.0),
                    Expanded(child: Course(
                      label: 'Contesting',
                      child: SvgPicture.asset(AppPath.doneIcon),
                    )),
                  ],
                ),
              ),
              const SizedBox(height: 25),
              Expanded(
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    Expanded(child: Course(
                      label: 'Add',
                      child: SvgPicture.asset(AppPath.addIcon),
                    )),
                    const SizedBox(width: 20.0),
                    Expanded(child: Course(
                      label: 'Modify',
                      child: SvgPicture.asset(AppPath.modifyIcon),
                    )),
                  ],
                ),
              ),
            ],
          ),
        ),
      ]),
    );
  }
}