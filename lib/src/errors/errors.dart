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
  final int _code;
  final Object? _details;
  final GrpcMetadata? _metadata;

  MomentoGrpcErrorDetails(this._code, this._details, this._metadata);

  int get code => _code;
  Object? get details => _details;
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

class LimitExceededException extends SdkException {
  LimitExceededException(String message, Exception? innerException, MomentoErrorTransportDetails? transportDetails)
      : super(
      message,
      MomentoErrorCode.limitExceededError,
      innerException,
      _generateMessageFromMetadata(transportDetails, message),
      transportDetails);

  static String _generateMessageFromMetadata(MomentoErrorTransportDetails? transportDetails, String message) {
    String messageWrapper = LimitExceededMessageWrapper.UNKNOWN_LIMIT_EXCEEDED.toString();
    if (transportDetails != null && transportDetails.grpc.metadata != null) {
      var metadata = transportDetails.grpc.metadata;
      String errorCause = metadata?.metadata["err"] ?? '';
      messageWrapper = LimitExceededMessageWrapper.fromErrorCause(errorCause, message).toString();
    }

    return messageWrapper;
  }
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

class IllegalArgumentError extends Error {
  String message;
  IllegalArgumentError(this.message) : super();
}

SdkException grpcStatusToSdkException(GrpcError grpcError) {
  final message = "${grpcError.message}";
  final transportDetails = MomentoErrorTransportDetails(
      MomentoGrpcErrorDetails(grpcError.code, grpcError.rawResponse, null));
  switch (grpcError.code) {
    case StatusCode.aborted:
      return InternalServerException(message, grpcError, transportDetails);
    case StatusCode.alreadyExists:
      return AlreadyExistsException(message, grpcError, transportDetails);
    case StatusCode.cancelled:
      return CancelledException(message, grpcError, transportDetails);
    case StatusCode.dataLoss:
      return InternalServerException(message, grpcError, transportDetails);
    case StatusCode.deadlineExceeded:
      return TimeoutException(message, grpcError, transportDetails);
    case StatusCode.failedPrecondition:
      return FailedPreconditionException(message, grpcError, transportDetails);
    case StatusCode.internal:
      return InternalServerException(message, grpcError, transportDetails);
    case StatusCode.invalidArgument:
      return InvalidArgumentException(message, grpcError, transportDetails);
    case StatusCode.notFound:
      return NotFoundException(message, grpcError, transportDetails);
    case StatusCode.outOfRange:
      return BadRequestException(message, grpcError, transportDetails);
    case StatusCode.permissionDenied:
      return PermissionException(message, grpcError, transportDetails);
    case StatusCode.resourceExhausted:
      return LimitExceededException(
          message, grpcError, transportDetails);
    case StatusCode.unauthenticated:
      return AuthenticationException(message, grpcError, transportDetails);
    case StatusCode.unimplemented:
      return BadRequestException(message, grpcError, transportDetails);
    case StatusCode.unknown:
      return UnknownException(message, grpcError, transportDetails);
    default:
      return UnknownException(message, grpcError, transportDetails);
  }
}

enum LimitExceededMessageWrapper {
  TOPIC_SUBSCRIPTIONS_LIMIT_EXCEEDED("Topic subscriptions limit exceeded for this account"),
  OPERATIONS_RATE_LIMIT_EXCEEDED("Request rate limit exceeded for this account"),
  THROUGHPUT_RATE_LIMIT_EXCEEDED("Bandwidth limit exceeded for this account"),
  REQUEST_SIZE_LIMIT_EXCEEDED("Request size limit exceeded for this account"),
  ITEM_SIZE_LIMIT_EXCEEDED("Item size limit exceeded for this account"),
  ELEMENT_SIZE_LIMIT_EXCEEDED("Element size limit exceeded for this account"),
  UNKNOWN_LIMIT_EXCEEDED("Limit exceeded for this account");

  final String messageWrapper;

  const LimitExceededMessageWrapper(this.messageWrapper);

  @override
  String toString() {
    return messageWrapper;
  }

  static LimitExceededMessageWrapper fromErrorCause(String errorCause, String message) {
    switch (errorCause) {
      case "topic_subscriptions_limit_exceeded":
        return LimitExceededMessageWrapper.TOPIC_SUBSCRIPTIONS_LIMIT_EXCEEDED;
      case "operations_rate_limit_exceeded":
        return LimitExceededMessageWrapper.OPERATIONS_RATE_LIMIT_EXCEEDED;
      case "throughput_rate_limit_exceeded":
        return LimitExceededMessageWrapper.THROUGHPUT_RATE_LIMIT_EXCEEDED;
      case "request_size_limit_exceeded":
        return LimitExceededMessageWrapper.REQUEST_SIZE_LIMIT_EXCEEDED;
      case "item_size_limit_exceeded":
        return LimitExceededMessageWrapper.ITEM_SIZE_LIMIT_EXCEEDED;
      case "element_size_limit_exceeded":
        return LimitExceededMessageWrapper.ELEMENT_SIZE_LIMIT_EXCEEDED;
      default:
        return fromErrorString(message);
    }
  }

  static LimitExceededMessageWrapper fromErrorString(String errorString) {
    String lowerCasedMessage = errorString.toLowerCase();
    if (lowerCasedMessage.contains("subscribers")) {
      return LimitExceededMessageWrapper.TOPIC_SUBSCRIPTIONS_LIMIT_EXCEEDED;
    } else if (lowerCasedMessage.contains("operations")) {
      return LimitExceededMessageWrapper.OPERATIONS_RATE_LIMIT_EXCEEDED;
    } else if (lowerCasedMessage.contains("throughput")) {
      return LimitExceededMessageWrapper.THROUGHPUT_RATE_LIMIT_EXCEEDED;
    } else if (lowerCasedMessage.contains("request limit")) {
      return LimitExceededMessageWrapper.REQUEST_SIZE_LIMIT_EXCEEDED;
    } else if (lowerCasedMessage.contains("item size")) {
      return LimitExceededMessageWrapper.ITEM_SIZE_LIMIT_EXCEEDED;
    } else if (lowerCasedMessage.contains("element size")) {
      return LimitExceededMessageWrapper.ELEMENT_SIZE_LIMIT_EXCEEDED;
    }
    return LimitExceededMessageWrapper.UNKNOWN_LIMIT_EXCEEDED;
  }
}
