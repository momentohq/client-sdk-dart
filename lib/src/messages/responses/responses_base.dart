import '../../errors/errors.dart';

class ErrorResponseBase implements AbstractErrorResponseBase {
  String _message;
  Error? _innerException;

  @override
  Error? get innerException => _innerException;

  @override
  String get message => _message;

  ErrorResponseBase(SdkError error) : _message = error.message, _innerException = error.innerException;
}