enum ApiStatus {
  success,
  serverError,

  //unauthorized between others errors can be placed here too.
}

extension StatusCode on ApiStatus {
  int get statusCode {
    switch (this) {
      case ApiStatus.success:
        return 200;
      default:
        return 500;
    }

    //unauthorized between others errors can be placed here too.
  }
}
