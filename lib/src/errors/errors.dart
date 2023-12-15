enum MomentoErrorCode {
  INVALID_ARGUMENT_ERROR,
  UNKNOWN_SERVICE_ERROR,
  ALREADY_EXISTS_ERROR,
  NOT_FOUND_ERROR,
}

abstract class AbstractExceptionResponseBase {
  final String _message;
  final Exception? _innerException;
  AbstractExceptionResponseBase(this._message, this._innerException);

  String get message => _message;
  Exception? get innerException => _innerException;
}

class SdkException extends AbstractExceptionResponseBase implements Exception {
  String _messageWrapper;
  SdkException(String message, Exception? innerException, String messageWrapper) : _messageWrapper = messageWrapper, super(message, innerException);

  String get messageWrapper => _messageWrapper;
}

class UnknownException extends SdkException {
  UnknownException(String message, Exception? innerException) : super(message, innerException, "Unknown error has occurred");
}
