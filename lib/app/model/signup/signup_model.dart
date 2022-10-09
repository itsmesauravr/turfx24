class SignUpModel {
  String userInputName;
  String userInputPassWord;

  SignUpModel({required this.userInputName, required this.userInputPassWord});

  Map<String, dynamic> toJson() {
    return {
      "user_mail": userInputName,
      "user_password": userInputPassWord,
    };
  }
}

class SignUpReturnResponse {
  bool status;
  String id;
  String message;

  SignUpReturnResponse({required this.status, required this.id,required this.message});

  factory SignUpReturnResponse.fromJson(Map<String, dynamic> json) {
    return SignUpReturnResponse(
      status: json["status"] ?? false,
      id: json["id"] ?? "",
      message: json["message"] ?? ""
    );
  }
}
