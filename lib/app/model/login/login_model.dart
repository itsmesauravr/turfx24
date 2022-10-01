class LogInModel {
  String userMail;
  String userPassword;

  LogInModel({
    required this.userMail,
    required this.userPassword,
  });

  Map<String, dynamic> toJson() => {
        "user_mail": userMail,
        "user_password": userPassword,
      };
}

class LogInResponse {
  bool status;
  String id;

  LogInResponse({
    required this.status,
    required this.id,
  });

  factory LogInResponse.fromJson(Map<String, dynamic> json) => LogInResponse(
        status: json["status"],
        id: json["id"],
      );
}
