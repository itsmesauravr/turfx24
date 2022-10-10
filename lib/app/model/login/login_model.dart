class LoginModel {
  String userMail;
  String userPassword;

  LoginModel({
    required this.userMail,
    required this.userPassword,
  });

  Map<String, dynamic> toJson() {
    return {
      "user_mail": userMail,
      "user_password": userPassword,
    };
  }
}

class LoginResponse {
  bool status;
  String message;
  String? token;

  LoginResponse({
    required this.status,
    required this.message,
    this.token,
  });
  factory LoginResponse.fromJson(Map<String, dynamic> json) {
    return LoginResponse(
      status: json["status"] ?? false,
      message: json["message"],
      token: json["token"] ?? "",
    );
  }
}
