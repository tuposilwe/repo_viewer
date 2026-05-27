class RestAPiException implements Exception{
  final int? errorCode;

  RestAPiException(this.errorCode);

}