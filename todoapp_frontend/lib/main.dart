import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:todoapp_frontend/features/authentication/ui/loginScreen.dart';
import 'package:todoapp_frontend/features/authentication/ui/signUpScreen.dart';
import 'package:todoapp_frontend/features/home/ui/home_page.dart';
import 'package:todoapp_frontend/features/todo/ui/add_todo.dart';
import 'package:todoapp_frontend/features/todo/ui/edit_todo.dart';
import 'package:todoapp_frontend/features/todo/ui/notification_screen.dart';
import 'package:todoapp_frontend/features/todo/ui/view_todo.dart';
import 'package:todoapp_frontend/splash_screen.dart';

import 'firebase_options.dart';
// import 'package:todoapp_frontend/signUpScreen.dart';

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp(options: DefaultFirebaseOptions.currentPlatform);
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false, // remove debug banner on emulator
      title: 'Flutter Demo',
      theme: ThemeData(
        // This is the theme of your application.
        //
        // TRY THIS: Try running your application with "flutter run". You'll see
        // the application has a purple toolbar. Then, without quitting the app,
        // try changing the seedColor in the colorScheme below to Colors.green
        // and then invoke "hot reload" (save your changes or press the "hot
        // reload" button in a Flutter-supported IDE, or press "r" if you used
        // the command line to start the app).
        //
        // Notice that the counter didn't reset back to zero; the application
        // state is not lost during the reload. To reset the state, use hot
        // restart instead.
        //
        // This works for code too, not just values: Most code changes can be
        // tested with just a hot reload.
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
      ),
      home: SplashScreen(),
    );
  }
}

