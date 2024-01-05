import '../../../responses_base.dart';

sealed class ListRemoveValueResponse {}

class ListRemoveValueSuccess implements ListRemoveValueResponse {}

class ListRemoveValueError extends ErrorResponseBase implements ListRemoveValueResponse {
  ListRemoveValueError(super.exception);
}