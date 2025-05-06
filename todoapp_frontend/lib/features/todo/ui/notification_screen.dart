import 'package:flutter/material.dart';

import '../../../contants/colors.dart';

class NotificationScreen extends StatefulWidget {
  const NotificationScreen({super.key});

  @override
  State<NotificationScreen> createState() => _NotificationScreenState();
}

class _NotificationScreenState extends State<NotificationScreen> {
  @override
  Widget build(BuildContext context) {
    double screenWidth = MediaQuery.of(context).size.width;
    double screenHeight = MediaQuery.of(context).size.height;

    return Scaffold(
      appBar: AppBar(
        toolbarHeight: 120,
        centerTitle: true,
        title: Text(
          'Notifications',
          style: TextStyle(
              color: AppColor.accentColor,
              fontFamily: 'Poppins',
              fontWeight: FontWeight.w600,
              fontSize: 20
          ),
        ),
        leading: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Container(
              height: 36,
              width: 36,
              margin: EdgeInsets.only(left: 20),
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(12),
              ),

              child: Center(
                  child: Icon(
                    Icons.arrow_back_ios,
                    size: 25,
                    color: Colors.black,
                  )
              ),
            ),
          ],
        ),
      ),
      body: Container(
        height: screenHeight - 120,
        width: screenWidth,

        child: Column(
          children: [
            Container(
              width: screenWidth,
              height: 1,
              color: AppColor.accentColor,
            ),
            Container(
              height: 60,
              width: screenWidth,
              // color: Colors.green,
              padding: EdgeInsets.only(left: 20),

              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Spacer(),
                  Text(
                    'AI Task Completed',
                    style: TextStyle(
                        color: Colors.black,
                        fontFamily: 'Poppins',
                        fontWeight: FontWeight.w500,
                        fontSize: 12
                    ),
                  ),
                  Text(
                    'Well done Phillip, you have completed all the tasks for today',
                    style: TextStyle(
                        color: Color.fromRGBO(71, 71, 71, 1),
                        fontFamily: 'Poppins',
                        fontWeight: FontWeight.w400,
                        fontSize: 10
                    ),
                  ),
                  Spacer(),
                ],
              ),
            ),
            Container(
              height: 60,
              width: screenWidth,
              color: Color.fromRGBO(241, 247, 254, 1),
              padding: EdgeInsets.only(left: 20),

              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Spacer(),
                  Text(
                    'Task Created',
                    style: TextStyle(
                        color: Colors.black,
                        fontFamily: 'Poppins',
                        fontWeight: FontWeight.w500,
                        fontSize: 12
                    ),
                  ),
                  Text(
                    'Phillip, your assignment is less than 8 days away from reaching',
                    style: TextStyle(
                        color: Color.fromRGBO(71, 71, 71, 1),
                        fontFamily: 'Poppins',
                        fontWeight: FontWeight.w400,
                        fontSize: 10
                    ),
                  ),
                  Spacer(),
                ],
              ),
            ),
            Container(
              height: 60,
              width: screenWidth,
              // color: Colors.green,
              padding: EdgeInsets.only(left: 20),

              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Spacer(),
                  Text(
                    'UX Task Completed',
                    style: TextStyle(
                        color: Colors.black,
                        fontFamily: 'Poppins',
                        fontWeight: FontWeight.w500,
                        fontSize: 12
                    ),
                  ),
                  Text(
                    'Well done Phillip, you have completed all the tasks for today',
                    style: TextStyle(
                        color: Color.fromRGBO(71, 71, 71, 1),
                        fontFamily: 'Poppins',
                        fontWeight: FontWeight.w400,
                        fontSize: 10
                    ),
                  ),
                  Spacer(),
                ],
              ),
            ),
            Container(
              height: 60,
              width: screenWidth,
              color: Color.fromRGBO(241, 247, 254, 1),
              padding: EdgeInsets.only(left: 20),

              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Spacer(),
                  Text(
                    'Task Completed',
                    style: TextStyle(
                        color: Colors.black,
                        fontFamily: 'Poppins',
                        fontWeight: FontWeight.w500,
                        fontSize: 12
                    ),
                  ),
                  Text(
                    'Well done Phillip, you have completed all the tasks for today',
                    style: TextStyle(
                        color: Color.fromRGBO(71, 71, 71, 1),
                        fontFamily: 'Poppins',
                        fontWeight: FontWeight.w400,
                        fontSize: 10
                    ),
                  ),
                  Spacer(),
                ],
              ),
            ),
            Container(
              height: 60,
              width: screenWidth,
              color: Color.fromRGBO(241, 247, 254, 1),
              padding: EdgeInsets.only(left: 20),

              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Spacer(),
                  Text(
                    'Task Completed',
                    style: TextStyle(
                        color: Colors.black,
                        fontFamily: 'Poppins',
                        fontWeight: FontWeight.w500,
                        fontSize: 12
                    ),
                  ),
                  Text(
                    'Well done Phillip, you have completed all the tasks for today',
                    style: TextStyle(
                        color: Color.fromRGBO(71, 71, 71, 1),
                        fontFamily: 'Poppins',
                        fontWeight: FontWeight.w400,
                        fontSize: 10
                    ),
                  ),
                  Spacer(),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
