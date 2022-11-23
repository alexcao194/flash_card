import 'package:flash_card/config/app_color.dart';
import 'package:flutter/material.dart';
import 'course.dart';

class HomeSC extends StatelessWidget {
  const HomeSC({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColor.blue,
      body: Stack(children: [
        // Container(
        //   height: 200,
        //   decoration: const BoxDecoration(
        //     borderRadius: BorderRadius.vertical(bottom: Radius.circular(25)),
        //     color: Colors.deepPurple,
        //   ),
        // ),
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
                        style: TextStyle(fontSize: 17, color: Colors.white,),
                      ),
                    ],
                  ),
                ),
                Container(
                  decoration: const BoxDecoration(
                    shape: BoxShape.circle,
                    color: Colors.white,
                  ),
                  child: IconButton(
                    onPressed: () {},
                    icon: const Icon(Icons.notifications_outlined),
                  ),
                ),
              ]),
              Container(
                height: 50,
                width: 350,
                decoration: BoxDecoration(borderRadius: BorderRadius.circular(50), color: Colors.white70),
                child: const TextField(
                  decoration: InputDecoration(
                    border: InputBorder.none,
                    prefixIcon: Icon(Icons.find_in_page_rounded),
                    hintText: 'Search your course',
                    suffixIcon: Icon(Icons.mic),
                  ),
                ),
              ),
              const SizedBox(height: 40),
              Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const Text(
                    "Explore categories",
                    style: TextStyle(
                      fontSize: 23,
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
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: const [
                  Course(),
                  Course(),
                ],
              ),
              const SizedBox(height: 25),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: const [
                  Course(),
                  Course(),
                ],
              ),
            ],
          ),
        ),
      ]),
    );
  }
}
