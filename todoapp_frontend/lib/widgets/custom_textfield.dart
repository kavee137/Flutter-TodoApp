import 'package:flutter/material.dart';
import '../contants/colors.dart';

class CustomTextfield extends StatefulWidget {
  final TextEditingController controller;
  final String labelText;
  final Color borderColor;

  const CustomTextfield({super.key, required this.controller, required this.labelText, required this.borderColor});

  @override
  State<CustomTextfield> createState() => _CustomTextfieldState();
}

class _CustomTextfieldState extends State<CustomTextfield> {
  @override
  Widget build(BuildContext context) {
    return TextField(
      controller: widget.controller,
      decoration: InputDecoration(
          filled: true,
          fillColor: Colors.white,
          enabledBorder: OutlineInputBorder(
            borderRadius: BorderRadius.all(Radius.circular(10)),
            borderSide: BorderSide(
              color: widget.borderColor,

            ),
          ),
          focusedBorder: OutlineInputBorder(
            borderRadius: BorderRadius.all(Radius.circular(10)),
            borderSide: BorderSide(
                color: widget.borderColor,
                width: 2
            ),
          ),
          label: Text(
              widget.labelText,
              style: TextStyle(
                color: AppColor.labelTextColor,
                fontFamily: "Poppins",
              )
          )
      ),
    );
  }
}
