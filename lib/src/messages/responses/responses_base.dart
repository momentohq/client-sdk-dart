import '../../errors/errors.dart';

class ErrorResponseBase extends AbstractExceptionResponseBase
    implements Exception {
  ErrorResponseBase(SdkException exception)
      : super(exception.message, exception.errorCode, exception.innerException);

  @override
  String toString() {
    return "[${super.errorCode}] ${super.message}";
  }
}

class NonErroResponseBase {
  @override
  String toString() {
    return "$runtimeType";
  }
}
