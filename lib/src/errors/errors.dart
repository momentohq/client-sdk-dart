import 'package:grpc/grpc.dart';

enum MomentoErrorCode {
  /// Invalid argument passed to Momento client
  invalidArgumentError,

  /// Service returned an unknown response
  unknownServiceError,

  /// Resource with specified name already exists
  alreadyExistsError,

  /// Cache with specified name doesn't exist
  notFoundError,

  /// An unexpected error occurred while trying to fulfill the request
  internalServerError,

  /// Insufficient permissions to perform operation
  permissionError,

  /// Invalid authentication credentials to connect to service
  authenticationError,

  /// Request was cancelled by the server
  cancelledError,

  /// Request rate, bandwidth, or object size exceeded the limits for the account
  limitExceededError,

  /// Request was invalid
  badRequestError,

  /// Client's configured timeout was exceeded
  timeoutError,

  /// Server was unable to handle the request
  serverUnavailable,

  /// A client resource (most likely memory) was exhausted
  clientResourceExhausted,

  /// System is not in a state required for the operation's execution
  failedPreconditionError,
}

class MomentoErrorTransportDetails {
  final MomentoGrpcErrorDetails _grpc;

  MomentoErrorTransportDetails(this._grpc);

  MomentoGrpcErrorDetails get grpc => _grpc;
}

class MomentoGrpcErrorDetails {
  final Code _code;
  final String _details;
  final GrpcMetadata? _metadata;

  MomentoGrpcErrorDetails(this._code, this._details, this._metadata);

  Code get code => _code;
  String get details => _details;
  GrpcMetadata? get metadata => _metadata;
}

abstract class AbstractExceptionResponseBase {
  /// Detailed information about the exception
  final String _message;

  /// Error code corresponding to one of the values of `MomentoErrorCode`
  final MomentoErrorCode _errorCode;

  /// Original `Exception`, if any, from which the `SdkException` was created
  final Exception? _innerException;

  AbstractExceptionResponseBase(
      this._message, this._errorCode, this._innerException);

  String get message => _message;
  MomentoErrorCode get errorCode => _errorCode;
  Exception? get innerException => _innerException;
}

class SdkException extends AbstractExceptionResponseBase implements Exception {
  final String _messageWrapper;
  final MomentoErrorTransportDetails? _transportDetails;

  SdkException(String message, MomentoErrorCode errorCode,
      Exception? innerException, this._messageWrapper, this._transportDetails)
      : super(message, errorCode, innerException);

  String get messageWrapper => _messageWrapper;
  MomentoErrorTransportDetails? get transportDetails => _transportDetails;
}

/// Invalid argument passed to Momento client
class InvalidArgumentException extends SdkException {
  InvalidArgumentException(String message, Exception? innerException,
      MomentoErrorTransportDetails? transportDetails)
      : super(message, MomentoErrorCode.invalidArgumentError, innerException,
            "Invalid argument passed to Momento client:", transportDetails);
}

/// Service returned an unknown response
class UnknownException extends SdkException {
  UnknownException(String message, Exception? innerException,
      MomentoErrorTransportDetails? transportDetails)
      : super(
            message,
            MomentoErrorCode.unknownServiceError,
            innerException,
            "The service returned an unknown response; please contact Momento.",
            transportDetails);
}

/// Resource with specified name already exists
class AlreadyExistsException extends SdkException {
  AlreadyExistsException(String message, Exception? innerException,
      MomentoErrorTransportDetails? transportDetails)
      : super(
            message,
            MomentoErrorCode.alreadyExistsError,
            innerException,
            "A cache with the specified name already exists.  To resolve this error, either delete the existing cache and make a new one, or use a different name.",
            transportDetails);
}

/// Cache with specified name doesn't exist
class NotFoundException extends SdkException {
  NotFoundException(String message, Exception? innerException,
      MomentoErrorTransportDetails? transportDetails)
      : super(
            message,
            MomentoErrorCode.notFoundError,
            innerException,
            "A cache with the specified name does not exist.  To resolve this error, make sure you have created the cache before attempting to use it.",
            transportDetails);
}

/// An unexpected error occurred while trying to fulfill the request
class InternalServerException extends SdkException {
  InternalServerException(String message, Exception? innerException,
      MomentoErrorTransportDetails? transportDetails)
      : super(
            message,
            MomentoErrorCode.internalServerError,
            innerException,
            "An unexpected error occurred while trying to fulfill the request; please contact Momento.",
            transportDetails);
}

/// Insufficient permissions to perform operation
class PermissionException extends SdkException {
  PermissionException(String message, Exception? innerException,
      MomentoErrorTransportDetails? transportDetails)
      : super(
            message,
            MomentoErrorCode.permissionError,
            innerException,
            "Insufficient permissions to perform an operation.",
            transportDetails);
}

/// Invalid authentication credentials to connect to service
class AuthenticationException extends SdkException {
  AuthenticationException(String message, Exception? innerException,
      MomentoErrorTransportDetails? transportDetails)
      : super(
            message,
            MomentoErrorCode.authenticationError,
            innerException,
            "Invalid authentication credentials to connect to service.",
            transportDetails);
}

/// Request was cancelled by the server
class CancelledException extends SdkException {
  CancelledException(String message, Exception? innerException,
      MomentoErrorTransportDetails? transportDetails)
      : super(
            message,
            MomentoErrorCode.cancelledError,
            innerException,
            "The request was cancelled by the server; please contact Momento.",
            transportDetails);
}

/// Request rate, bandwidth, or object size exceeded the limits for the account
class LimitExceededException extends SdkException {
  LimitExceededException(String message, Exception? innerException,
      MomentoErrorTransportDetails? transportDetails)
      : super(
            message,
            MomentoErrorCode.limitExceededError,
            innerException,
            "Request rate, bandwidth, or object size exceeded the limits for this account.  To resolve this error, reduce your usage as appropriate or contact Momento to request a limit increase.",
            transportDetails);
}

/// Request was invalid
class BadRequestException extends SdkException {
  BadRequestException(String message, Exception? innerException,
      MomentoErrorTransportDetails? transportDetails)
      : super(
            message,
            MomentoErrorCode.badRequestError,
            innerException,
            "The request was invalid; please contact Momento.",
            transportDetails);
}

/// Client's configured timeout was exceeded
class TimeoutException extends SdkException {
  TimeoutException(String message, Exception? innerException,
      MomentoErrorTransportDetails? transportDetails)
      : super(
            message,
            MomentoErrorCode.timeoutError,
            innerException,
            "The client's configured timeout was exceeded; you may need to use a configuration with more lenient timeouts.",
            transportDetails);
}

/// Server was unable to handle the request
class ServerUnavailableException extends SdkException {
  ServerUnavailableException(String message, Exception? innerException,
      MomentoErrorTransportDetails? transportDetails)
      : super(
            message,
            MomentoErrorCode.serverUnavailable,
            innerException,
            "The server was unable to handle the request; consider retrying.  If the error persists, please contact Momento.",
            transportDetails);
}

/// A client resource (most likely memory) was exhausted
class ClientResourceExhaustedException extends SdkException {
  ClientResourceExhaustedException(String message, Exception? innerException,
      MomentoErrorTransportDetails? transportDetails)
      : super(
            message,
            MomentoErrorCode.clientResourceExhausted,
            innerException,
            "A client resource (most likely memory) was exhausted.  If you are executing a high volume of concurrent requests or using very large object sizes, your Configuration may need to be updated to allocate more memory.  Please contact Momento for assistance.",
            transportDetails);
}

/// System is not in a state required for the operation's execution
class FailedPreconditionException extends SdkException {
  FailedPreconditionException(String message, Exception? innerException,
      MomentoErrorTransportDetails? transportDetails)
      : super(
            message,
            MomentoErrorCode.failedPreconditionError,
            innerException,
            "System is not in a state required for the operation's execution; please contact Momento.",
            transportDetails);
}
