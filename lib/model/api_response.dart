class APIResponse<T> {
  T data;
  bool error;
  int status;
  int responseCode;
  String message;
  bool loading;
  int pageNo;
  bool pagination;

  APIResponse({
    required this.data,
    this.status = 1000,
    this.responseCode = 0,
    this.message = '',
    this.loading = false,
    this.error = false,
    this.pageNo = 1,
    this.pagination = true,
  });
}