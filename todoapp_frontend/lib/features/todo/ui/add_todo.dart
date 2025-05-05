import 'package:flutter/material.dart';
import 'package:todoapp_frontend/contants/colors.dart';

class AddTodo extends StatefulWidget {
  const AddTodo({super.key});

  @override
  State<AddTodo> createState() => _AddTodoState();
}

class _AddTodoState extends State<AddTodo> {
  final TextEditingController _titleController = TextEditingController();
  final TextEditingController _descriptionController = TextEditingController();

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
          'Add Task',
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
            TextField(
              controller: _titleController,
              decoration: InputDecoration(
                  filled: true,
                  fillColor: Colors.white,
                  enabledBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.all(Radius.circular(10)),
                    borderSide: BorderSide(
                      color: Color.fromRGBO(0, 110, 233, 0.06)
                    ),
                  ),
                  focusedBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.all(Radius.circular(10)),
                    borderSide: BorderSide(
                        color: Color.fromRGBO(0, 110, 233, 0.06),
                        width: 2
                    ),
                  ),
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
            TextField(
              minLines: 5,
              maxLines: 8,
              controller: _descriptionController,
              decoration: InputDecoration(
                  filled: true,
                  fillColor: Colors.white,
                  enabledBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.all(Radius.circular(10)),
                    borderSide: BorderSide(
                      color: Color.fromRGBO(0, 110, 233, 0.06),
                    ),
                  ),
                  focusedBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.all(Radius.circular(10)),
                    borderSide: BorderSide(
                        color: Color.fromRGBO(0, 110, 233, 0.06),
                        width: 2
                    ),
                  ),
              ),
            ),
            SizedBox(
                height: 90
            ),
            Container(
                width: screenWidth,
                height: 55,
                decoration: BoxDecoration(
                  color: AppColor.accentColor,
                  borderRadius: BorderRadius.all(Radius.circular(10)),
                ),
                child: Center(
                    child:Text(
                        'Create Task',
                        style: TextStyle(
                          color: Colors.white,
                          fontFamily: "Poppins",
                          fontWeight: FontWeight.w500,
                          fontSize: 16,
                        )
                    )
                )
            ),
          ],
        ),
      ),
    );
  }
}
