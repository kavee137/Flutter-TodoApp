import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:lottie/lottie.dart';
import 'package:todoapp_frontend/contants/colors.dart';
import 'package:todoapp_frontend/features/authentication/ui/signUpScreen.dart';

import '../../../widgets/custom_button.dart';
import '../../../widgets/custom_textfield.dart';
import '../../home/ui/home_page.dart';
import '../bloc/auth_bloc.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({super.key});

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  TextEditingController _emailController = TextEditingController();
  TextEditingController _passwordController = TextEditingController();

  final AuthBloc _authBloc = AuthBloc();
  bool isLoading = false;

  @override
  Widget build(BuildContext context) {
    double screenWidth = MediaQuery.of(context).size.width;
    double screenHeight = MediaQuery.of(context).size.height;

    return Scaffold(
      backgroundColor: AppColor.loginBGColor,
      body: BlocConsumer<AuthBloc, AuthState>(
        bloc: _authBloc,
        listener: (context, state) {
          if (state is SignInProgressState) {
            isLoading = true;
          } else if (state is SignInSuccessState) {
            isLoading = false;
            ScaffoldMessenger.of(context).showSnackBar(
              SnackBar(
                content: Text(
                  'Login Success',
                  style: TextStyle(color: Colors.white),
                ),
                backgroundColor: AppColor.accentColor,
              ),
            );
            Navigator.pushAndRemoveUntil(
              context,
              MaterialPageRoute(builder: (context) => const HomePage()),
              (Route<dynamic> routes) => false,
            );
          } else if (state is SignInErrorState) {
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
                Expanded(
                  flex: 1,
                  child: SizedBox(
                    width: screenWidth - 100,
                    child: Lottie.asset(
                      'assets/animations/loginAnimation.json',
                    ),
                  ),
                ),
                Expanded(
                  flex: 2,
                  child: Container(
                    width: screenWidth,
                    padding: EdgeInsets.symmetric(horizontal: 30, vertical: 50),
                    decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.only(
                        topLeft: Radius.circular(40),
                        topRight: Radius.circular(40),
                      ),
                    ),
                    child: SingleChildScrollView(
                      child: SingleChildScrollView(
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              'Login',
                              style: TextStyle(
                                color: Colors.black,
                                fontSize: 30,
                                fontFamily: 'Poppins',
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                            Row(
                              children: [
                                Text(
                                  'Welcome Back to',
                                  style: TextStyle(
                                    color: AppColor.labelTextColor,
                                    fontSize: 16,
                                    fontFamily: 'Poppins',
                                    fontWeight: FontWeight.w400,
                                  ),
                                ),
                                SizedBox(width: 8),
                                Text(
                                  'My',
                                  style: TextStyle(
                                    color: Colors.black,
                                    fontSize: 16,
                                    fontFamily: 'Poppins',
                                  ),
                                ),
                                Text(
                                  'Task',
                                  style: TextStyle(
                                    color: AppColor.accentColor,
                                    fontWeight: FontWeight.bold,
                                    fontSize: 16,
                                    fontFamily: 'Poppins',
                                  ),
                                ),
                              ],
                            ),
                            SizedBox(height: 30),
                            CustomTextfield(
                              controller: _emailController,
                              labelText: "Email",
                              borderColor: AppColor.textFieldBorderColor,
                            ),
                            SizedBox(height: 30),
                            CustomTextfield(
                              controller: _passwordController,
                              labelText: "Password",
                              borderColor: AppColor.textFieldBorderColor,
                            ),
                            SizedBox(height: 30),
                            isLoading
                                ? SizedBox(
                                  height: 55,
                                  width: screenWidth,
                                  child: Center(child: CircularProgressIndicator()),
                                )
                                : GestureDetector(
                                  onTap: () {
                                    _authBloc.add(
                                      SignInEvent(
                                        email: _emailController.text,
                                        password: _passwordController.text,
                                      ),
                                    );
                                  },
                                  child: CustomButton(
                                    btnText: "Login",
                                    btnWidth: screenWidth,
                                  ),
                                ),
                            SizedBox(height: 30),
                            Row(
                              children: [
                                Text(
                                  'Don\'t have an account?',
                                  style: TextStyle(
                                    color: Color.fromARGB(255, 14, 19, 15),
                                  ),
                                ),
                                GestureDetector(
                                  onTap: () {
                                    Navigator.push(
                                      context,
                                      MaterialPageRoute(
                                        builder: (context) => const SignUpScreen(),
                                      ),
                                    );
                                  },
                                  child: Text(
                                    ' SignUp',
                        
                                    style: TextStyle(
                                      color: AppColor.accentColor,
                                      fontWeight: FontWeight.bold,
                                      fontSize: 15,
                                      fontFamily: 'Poppins',
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          ],
                        ),
                      ),
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
