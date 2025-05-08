part of 'auth_bloc.dart';

@immutable
sealed class AuthEvent {}


class SignUpEvent extends AuthEvent {
  final UserModel userModel;
  SignUpEvent({required this.userModel});
}

class SignInEvent extends AuthEvent {
  final String email;
  final String password;
  SignInEvent({required this.email, required this.password});
}




