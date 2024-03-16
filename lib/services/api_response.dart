class APIErrorResponse<T> {
  int statusCode;
  String message;

  APIErrorResponse({this.statusCode = 500, this.message = 'Server not found!'});
}