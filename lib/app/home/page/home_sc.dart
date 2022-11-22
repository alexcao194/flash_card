import 'package:flutter/material.dart';
import 'course.dart';

class HomeSC extends StatelessWidget {
  const HomeSC({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white70,
      body: Stack(children: [
        Container(
          height: 200,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.vertical(bottom: Radius.circular(25)),
            color: Colors.deepPurple,
          ),
        ),
        Padding(
          padding: const EdgeInsets.all(20.0),
          child: Column(
            children: [
              Row(children: [
                Container(
                  //padding: EdgeInsets.all(20.0),
                  width: 300,
                  height: 110,
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      SizedBox(height: 20),
                      Text(
                        'Hello',
                        style: TextStyle(
                          fontSize: 30,
                          fontWeight: FontWeight.w500,
                          color: Colors.white,
                        ),
                      ),
                      Text(
                        "Let's start together",
                        style: TextStyle(
                          fontSize: 17,
                          color: Colors.white,
                        ),
                      ),
                    ],
                  ),
                ),
                Container(
                  decoration: BoxDecoration(
                    shape: BoxShape.circle,
                    color: Colors.white,
                  ),
                  child: IconButton(
                    onPressed: () {},
                    icon: Icon(
                      Icons.notifications_outlined,
                    ),
                  ),
                ),
              ]),
              Container(
                height: 50,
                width: 350,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(50),
                  color: Colors.white70,
                ),
                child: Padding(
                  padding: const EdgeInsets.all(10.0),
                  child: TextField(
                    decoration: InputDecoration(
                      border: InputBorder.none,
                      prefixIcon: Icon(Icons.find_in_page_rounded),
                      hintText: 'Search your course',
                      suffixIcon: Icon(Icons.mic),
                    ),
                  ),
                ),
              ),
              SizedBox(height:40),
              Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    "Explore categories",
                    style: TextStyle(
                      fontSize: 23,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  const SizedBox(width: 50),
                  TextButton(
                      onPressed: (){},
                      child: Text(
                        'See all',
                        style: TextStyle(
                          fontSize: 15,
                          color: Colors.blue,
                        ),
                      )
                  )
                ],
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  Course(),
                  Course(),
                ],
              ),
              SizedBox(height: 25),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
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


