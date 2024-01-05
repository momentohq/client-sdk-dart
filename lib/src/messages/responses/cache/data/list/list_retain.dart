import '../../../responses_base.dart';

sealed class ListRetainResponse {}

class ListRetainSuccess implements ListRetainResponse {}

class ListRetainError extends ErrorResponseBase implements ListRetainResponse {
  ListRetainError(super.exception);
}