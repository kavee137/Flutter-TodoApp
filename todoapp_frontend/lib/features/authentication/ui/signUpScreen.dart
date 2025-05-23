import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:todoapp_frontend/contants/colors.dart';
import 'package:todoapp_frontend/features/authentication/bloc/auth_bloc.dart';
import 'package:todoapp_frontend/widgets/custom_button.dart';
import 'package:todoapp_frontend/widgets/custom_textfield.dart';

import '../../../models/user_model.dart';
import 'loginScreen.dart';

class SignUpScreen extends StatefulWidget {
  const SignUpScreen({super.key});

  @override
  State<SignUpScreen> createState() => _SignUpScreenState();
}

class _SignUpScreenState extends State<SignUpScreen> {
  TextEditingController _nameController = TextEditingController();
  TextEditingController _emailController = TextEditingController();
  TextEditingController _passwordController = TextEditingController();

  final AuthBloc _authBloc = AuthBloc();
  bool isLoading = false;

  @override
  Widget build(BuildContext context) {
    double screenWidth = MediaQuery.of(context).size.width;
    double screenHeight = MediaQuery.of(context).size.height;

    return Scaffold(
      backgroundColor: Colors.white,
      body: BlocConsumer<AuthBloc, AuthState>(
        bloc: _authBloc,
        listener: (context, state) {
          if (state is SignUpInProgressState) {
            isLoading = true;
          } else if (state is SignUpSuccessState) {
            isLoading = false;
            ScaffoldMessenger.of(context).showSnackBar(
              SnackBar(
                content: Text(
                  'SignUp Success',
                  style: TextStyle(color: Colors.white),
                ),
                backgroundColor: AppColor.accentColor,
              ),
            );
            Navigator.pushReplacement(
              context,
              MaterialPageRoute(builder: (context) => const LoginScreen()),
            );
          } else if (state is SignUpErrorState) {
            isLoading = false;
            ScaffoldMessenger.of(context).showSnackBar(
              SnackBar(
                content: Text(
                  state.error,
                  style: TextStyle(color: Colors.white),
                ),
                backgroundColor: Colors.red,
              ),
            );
          }
        },
        builder: (context, state) {
          return SafeArea(
            child: Column(
              children: [
                Expanded(flex: 1, child: Image.asset('assets/images/s.png')),
                Expanded(
                  flex: 1,
                  child: Container(
                    width: screenWidth,
                    padding: EdgeInsets.symmetric(horizontal: 20, vertical: 15),
                    decoration: BoxDecoration(
                      color: AppColor.signUpAccentColor,
                      // color: Colors.red,
                      borderRadius: BorderRadius.only(
                        topLeft: Radius.circular(40),
                        topRight: Radius.circular(40),
                      ),
                    ),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          "Signup",
                          style: TextStyle(
                            fontSize: 36,
                            fontWeight: FontWeight.w400,
                            fontFamily: "Poppins",
                            color: AppColor.fontcolorBlack,
                          ),
                        ),
                        SizedBox(height: 25),
                        CustomTextfield(
                          controller: _nameController,
                          labelText: "Name",
                          borderColor: Colors.white,
                        ),
                        SizedBox(height: 15),
                        CustomTextfield(
                          controller: _emailController,
                          labelText: "Email",
                          borderColor: Colors.white,
                        ),
                        SizedBox(height: 15),
                        CustomTextfield(
                          controller: _passwordController,
                          labelText: "Password",
                          borderColor: Colors.white,
                        ),
                        SizedBox(height: 15),
                        isLoading
                            ? SizedBox(
                              height: 55,
                              width: screenWidth,
                              child: Center(
                                child: CircularProgressIndicator(),
                              ),
                            )
                            : GestureDetector(
                              onTap: () {
                                final user = UserModel(
                                  '',
                                  _nameController.text,
                                  _emailController.text,
                                  _passwordController.text,
                                  '',
                                );

                                _authBloc.add(SignUpEvent(userModel: user));
                              },
                              child: CustomButton(
                                btnText: "Sign Up",
                                btnWidth: screenWidth,
                              ),
                            ),
                        SizedBox(height: 15),
                        Row(
                          children: [
                            Text(
                              'Already have an account?',
                              style: TextStyle(
                                fontSize: 14,
                                fontWeight: FontWeight.w300,
                                fontFamily: "Poppins",
                                color: AppColor.fontcolorBlack,
                              ),
                            ),

                            SizedBox(width: 11),

                            Text(
                              'Login',
                              style: TextStyle(
                                fontSize: 14,
                                fontWeight: FontWeight.w300,
                                fontFamily: "Poppins",
                                color: Colors.blue,
                              ),
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),
                ),
              ],
            ),
          );
        },
      ),
    );
  }
}
