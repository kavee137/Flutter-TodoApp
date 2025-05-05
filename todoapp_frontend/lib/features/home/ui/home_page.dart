
import 'package:flutter/material.dart';
import 'package:todoapp_frontend/contants/colors.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {

    double screenHeight = MediaQuery.of(context).size.height;
    double screenWidth = MediaQuery.of(context).size.width;


    return Scaffold(
      appBar: AppBar(
        // backgroundColor: Colors.red,

        title: Row(
          children: [
            Text(
                'Saturday, Feb 20 2022',
                style: TextStyle(
                  color: AppColor.dateTextColor,
                  fontFamily: 'Poppins',
                  fontWeight: FontWeight.w400,
                  fontSize: 12,
                )
            ),
            Spacer(),
            Image.asset('assets/images/notification.png'),
          ],
        ),
      ),
      body: SizedBox(
        height: screenHeight - AppBar().preferredSize.height,
        width: screenWidth,
        // color: Colors.green,
        child: Column(
          children: [
            Expanded (
              child: Container(
                width: screenWidth,
                height: 290,
                padding: EdgeInsets.symmetric(horizontal: (15)),
                // color: Colors.red,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                        'Welcome Phillip',
                        style: TextStyle(
                            fontSize: 24,
                            fontWeight: FontWeight.w700,
                            fontFamily: "Poppins",
                            color: AppColor.fontcolorBlack
                        )
                    ),
                    Text(
                        'Have a nice day !',
                        style: TextStyle(
                            fontSize: 16,
                            fontWeight: FontWeight.w400,
                            fontFamily: "Poppins",
                            color: AppColor.dateTextColor
                        )
                    ),
                    Spacer(),
                    Text(
                        'Today Progress',
                        style: TextStyle(
                            fontSize: 20,
                            fontWeight: FontWeight.w600,
                            fontFamily: "Poppins",
                            color: AppColor.fontcolorBlack
                        )
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    Container(
                      height: 76,
                      width: screenWidth,
                      padding: EdgeInsets.symmetric(horizontal: 15),
              
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(20),
                        image: DecorationImage(
                          image: AssetImage('assets/images/progressBg.png'),
                          fit: BoxFit.cover,
                        )
                      ),
                      child: Column(
              
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Spacer(),
                          Text(
                            'Progress',
                            style: TextStyle(
                                fontSize: 10,
                                fontWeight: FontWeight.w400,
                                fontFamily: "Poppins",
                                color: Colors.white
                            ),
                          ),
                          SizedBox(
                            height: 5,
                          ),
                          LinearProgressIndicator(
                            value: 0.8,
                            color: Colors.white,
                            backgroundColor: AppColor.progressBGColor,
                          ),
                          SizedBox(
                            height: 5,
                          ),
                          Align(
                            alignment: Alignment.centerRight,
                            child: Text(
                              '80%',
                              style: TextStyle(
                                  fontSize: 10,
                                  fontWeight: FontWeight.w400,
                                  fontFamily: "Poppins",
                                  color: Colors.white
                              ),
                            ),
                          ),
                          SizedBox(
                            height: 10,
                          ),
                        ]
                      ),
                    ),
                    SizedBox(
                      height: 20,
                    ),
                  ]
                ),
              ),
            ),

            Container(
              width: screenWidth,
              height: screenHeight - (AppBar().preferredSize.height + 290),
              padding: EdgeInsets.symmetric(horizontal: (15)),
              // color: Colors.green,

              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  SizedBox(
                    height: 25,
                    child: Text(
                        'Daily Tasks',
                        style: TextStyle(
                            fontSize: 20,
                            fontWeight: FontWeight.bold,
                            fontFamily: "Poppins",
                            color: AppColor.fontcolorBlack
                        )
                    ),
                  ),
                  SizedBox(
                    width: screenWidth,
                    height: screenHeight - (AppBar().preferredSize.height + 290 + 25),
                    child: Column(

                      children: [
                        SizedBox(
                          height: 10,
                        ),
                        Container(
                          width: screenWidth,
                          height: 70,
                          // color: Colors.white,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(10),
                            border: Border.all(
                              color: AppColor.accentColor.withOpacity(0.5)
                            ),
                            color: Colors.white
                          ),

                          child: Row(
                            children: [
                              Radio(value: 0, groupValue: 0, onChanged: (value) {}),
                              Text(
                                'Work Out',
                                style: TextStyle(
                                  fontSize: 16,
                                  fontWeight: FontWeight.w500,
                                  fontFamily: "Poppins",
                                  color: AppColor.fontcolorBlack
                                ),
                              ),
                              Spacer(),
                              Column(
                                children: [
                                  Spacer(),
                                  Icon(Icons.edit),
                                  SizedBox(
                                    height: 5,
                                  ),
                                  Icon(Icons.delete, color: Colors.red,),
                                  Spacer(),
                                ],
                              ),
                              SizedBox(
                                width: 10,
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
            
            
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton.extended(
          onPressed: (){},
          backgroundColor: AppColor.accentColor,
          label: Row(
            children: [
              Icon(Icons.add, color: Colors.white,),
              SizedBox(
                width: 10,
              ),
              Text(
                'Add Task',
                style: TextStyle(
                    fontSize: 15,
                    fontWeight: FontWeight.w500,
                    fontFamily: "Poppins",
                    color: Colors.white
                ),
              ),
            ],
          )
      ),
    );
  }
}
