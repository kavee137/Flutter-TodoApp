import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:todoapp_frontend/models/user_model.dart';

class AuthServices {
  final _auth = FirebaseAuth.instance;
  final _firestore = FirebaseFirestore.instance;



  // User Sign Up function
  Future<void> signUpUser(UserModel user) async {
    UserCredential userCredential = await _auth.createUserWithEmailAndPassword(
      email: user.email,
      password: user.password,
    );

    if (userCredential.user != null) {
      UserModel finalUser = UserModel(
        userCredential.user!.uid,
        user.name,
        user.email,
        user.password,
        user.fcmToken,
      );

      await _firestore
          .collection('Users')
          .doc(userCredential.user!.uid)
          .set(finalUser.toJson());


    } else {
      print('❌ User already registered!');
    }
  }


  // User Sign In function
  Future<void> signInUser(String email, String password) async {
    await _auth.signInWithEmailAndPassword(email: email, password: password);
  }








}
