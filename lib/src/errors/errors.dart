abstract class AbstractErrorResponseBase {
  String _message;
  Error? _innerException;
  AbstractErrorResponseBase(this._message, this._innerException);

  String get message => _message;
  Error? get innerException => _innerException;
}

class SdkError implements Error, AbstractErrorResponseBase {
  @override
  // TODO: implement stackTrace
  StackTrace? get stackTrace => _innerException?.stackTrace;

  @override
  Error? _innerException;

  @override
  String _message;

  SdkError(this._message, this._innerException);

  @override
  // TODO: implement innerException
  Error? get innerException => _innerException;

  @override
  // TODO: implement message
  String get message => _message;

}