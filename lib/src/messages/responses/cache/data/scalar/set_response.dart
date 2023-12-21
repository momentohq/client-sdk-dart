import 'package:client_sdk_dart/src/messages/responses/responses_base.dart';

sealed class SetResponse {}

class SetSuccess implements SetResponse {}

class SetError extends ErrorResponseBase implements SetResponse {
  SetError(super.exception);
}
