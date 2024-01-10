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
  final String _message;

  NonErroResponseBase(this._message);

  @override
  String toString() {
    return _message;
  }
}
