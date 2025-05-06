
import 'package:flutter/material.dart';

import '../../../contants/colors.dart';

class ViewTodo extends StatelessWidget {
  const ViewTodo({super.key});

  @override
  Widget build(BuildContext context) {
    double screenWidth = MediaQuery.of(context).size.width;
    double screenHeight = MediaQuery.of(context).size.height;


    return Scaffold(
      backgroundColor: AppColor.accentColor,
      appBar: AppBar(
        toolbarHeight: 120,
        backgroundColor: AppColor.accentColor,
        centerTitle: true,
        title: Text(
          'View Task',
          style: TextStyle(
              color: Colors.white,
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
                    size: 18,
                  )
              ),
            ),
          ],
        ),
      ),
      body: Container(
        width: screenWidth,
        height: screenHeight - 120,
        padding: EdgeInsets.symmetric(horizontal: 30, vertical: 60),
        // color: Colors.red,
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.only(
            topLeft: Radius.circular(70),
            topRight: Radius.circular(70),
          ),
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              'Title',
              style: TextStyle(
                fontSize: 14,
                fontWeight: FontWeight.w500,
                fontFamily: "Poppins",
                color: AppColor.accentColor,
              ),
            ),
            SizedBox(
                height: 5
            ),
            Text(
              'Work out',
              style: TextStyle(
                fontSize: 16,
                fontWeight: FontWeight.w400,
                fontFamily: "Poppins",
                color: Colors.black,
              ),
            ),
            SizedBox(
                height: 15
            ),
            Text(
              'Description',
              style: TextStyle(
                fontSize: 14,
                fontWeight: FontWeight.w500,
                fontFamily: "Poppins",
                color: AppColor.accentColor,
              ),
            ),
            SizedBox(
                height: 10
            ),
            Text(
              'Routine exercise every morning with sports, either running, or swimming, or jogging, or badminton, futsal, or similar sports. Work out to form a better body and live a healthier life. hopefully all this can be achieved.',
              style: TextStyle(
                fontSize: 14,
                fontWeight: FontWeight.w400,
                fontFamily: "Poppins",
                color: Colors.black,
              ),
            ),

          ],
        ),
      ),
    );
  }
}
