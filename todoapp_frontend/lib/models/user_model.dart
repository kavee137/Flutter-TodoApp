class UserModel {
  final String userID;
  final String name;
  final String email;
  final String password;
  final String fcmToken;

  UserModel(this.userID, this.name, this.email, this.password, this.fcmToken);

  Map<String, dynamic> toJson() {
    return {
      'userID': userID,
      'name': name,
      'email': email,
      'password': password,
      'fcmToken': fcmToken,
    };
  }



}