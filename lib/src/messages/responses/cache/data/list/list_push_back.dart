import '../../../responses_base.dart';

sealed class ListPushBackResponse {}

class ListPushBackError extends ErrorResponseBase
    implements ListPushBackResponse {
  ListPushBackError(super.exception);
}

class ListPushBackSuccess implements ListPushBackResponse {
  ListPushBackSuccess(this._length);

  final int _length;

  int get length => _length;
}
