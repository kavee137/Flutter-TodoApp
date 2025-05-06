import 'package:flutter/material.dart';

import '../contants/colors.dart';

class CustomButton extends StatelessWidget {
  final String btnText;
  final double btnWidth;
  const CustomButton({super.key, required this.btnText, required this.btnWidth});

  @override
  Widget build(BuildContext context) {

    return Container(
        width: btnWidth,
        height: 55,
        decoration: BoxDecoration(
          color: AppColor.accentColor,
          borderRadius: BorderRadius.all(Radius.circular(80)),
        ),
        child: Center(
            child:Text(
                btnText,
                style: TextStyle(
                  color: Colors.white,
                  fontFamily: "Poppins",
                  fontWeight: FontWeight.w500,
                  fontSize: 16,
                )
            )
        )
    );
  }
}
