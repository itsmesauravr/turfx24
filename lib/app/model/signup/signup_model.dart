class SignUpModel {
  String userMail;
  String userPassword;

  SignUpModel({
    required this.userMail,
    required this.userPassword,
  });

  Map<String, dynamic> toJson() => {
        "user_mail": userMail,
        "user_password": userPassword,
      };
}
