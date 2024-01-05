import '../../../responses_base.dart';

sealed class ListPushFrontResponse {}

class ListPushFrontError extends ErrorResponseBase
    implements ListPushFrontResponse {
  ListPushFrontError(super.exception);
}

class ListPushFrontSuccess implements ListPushFrontResponse {
  ListPushFrontSuccess(this._length);

  final int _length;

  int get length => _length;
}
