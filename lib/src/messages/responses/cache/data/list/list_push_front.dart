import '../../../responses_base.dart';

sealed class ListPushFrontResponse {}

class ListPushFrontMiss implements ListPushFrontResponse {}

class ListPushFrontError extends ErrorResponseBase
    implements ListPushFrontResponse {
  ListPushFrontError(super.exception);
}

class ListPushFrontHit implements ListPushFrontResponse {
  ListPushFrontHit(this._length);

  final int _length;

  int get length => _length;
}
