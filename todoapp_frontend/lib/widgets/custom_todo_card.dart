import 'package:flutter/material.dart';

import '../contants/colors.dart';

class CustomTodoCard extends StatefulWidget {
  final String cardTitle;
  final bool isTaskCompleted;

  const CustomTodoCard({super.key, required this.cardTitle, required this.isTaskCompleted});

  @override
  State<CustomTodoCard> createState() => _CustomTodoCardState();
}

class _CustomTodoCardState extends State<CustomTodoCard> {
  @override
  Widget build(BuildContext context) {
    double screenWidth = MediaQuery.of(context).size.width;

    return Container(
      width: screenWidth,
      height: 70,
      margin: EdgeInsets.only(bottom: 10),
      // color: Colors.white,
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(10),
          border: Border.all(
              color: AppColor.accentColor.withOpacity(0.2)
          ),
          color: Colors.white
      ),

      child: Row(
        children: [
          Radio(
              value: widget.isTaskCompleted ? 1 : 0,
              groupValue: 0,
              onChanged: (value) {}
          ),
          Text(
            widget.cardTitle,
            style: TextStyle(
                fontSize: 16,
                fontWeight: FontWeight.w500,
                fontFamily: "Poppins",
                color: widget.isTaskCompleted ? AppColor.fontcolorBlack : AppColor.accentColor
            ),
          ),
          Spacer(),
          widget.isTaskCompleted? // Methanadi karanne btnVisibility true nam me colunm eka show karana eka..ethakota edit, delete button show wenwa. nattan me counm eke yatama dala thiyenwa, btnVisibility false nan niakn sizedbox ekek show wenawa.
          SizedBox() : // methana : eken kiyanne neththan kiyana eka... false awoth thamai colunm eka show wennwa.
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
    );
  }
}
