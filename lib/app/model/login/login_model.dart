class LoginModel {
  String userMail;
  String userPassword;

  LoginModel({
    required this.userMail,
    required this.userPassword,
  });

  Map<String,dynamic>toJson() {
    return {
      "user_mail": userMail,
      "user_password": userPassword,
    };
  }
}
