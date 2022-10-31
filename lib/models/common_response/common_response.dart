typedef ItemCreator<T> = T? Function();
typedef ErrorCreator<E> = E? Function();

class ErrorResponse {
  int errNo;
  String content;

  Map<String, dynamic> toMap() => {
        "error_no": errNo,
        "text": content,
      };

  ErrorResponse({required this.errNo, required this.content});

  static ErrorResponse? fromJson(Map<String, dynamic> json) => ErrorResponse(
        errNo: json["error_no"],
        content: json["text"],
      );

  @override
  String toString() {
    return 'err_no: $errNo message: $content';
  }
}

class CommonResponse {
  String status;
  int statusCode;
  String message;

  CommonResponse(
      {required this.status, required this.statusCode, required this.message});

  factory CommonResponse.fromJson({required Map<String, dynamic> json}) {
    final status = json["status"];
    final statusCode = json["status_code"];
    final message = json["text"];
    return CommonResponse(
        status: status, statusCode: statusCode, message: message);
  }
}
