import '../../errors/errors.dart';

class ErrorResponseBase extends AbstractExceptionResponseBase {
  ErrorResponseBase(SdkException exception)
      : super(exception.message, exception.innerException);
}
