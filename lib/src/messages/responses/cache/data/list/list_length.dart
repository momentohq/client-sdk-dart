import '../../../responses_base.dart';

sealed class ListLengthResponse {}

class ListLengthMiss implements ListLengthResponse {}
class ListLengthError extends ErrorResponseBase implements ListLengthResponse {
  ListLengthError(super.exception);
}

class ListLengthHit implements ListLengthResponse {
  ListLengthHit(this._length);

  final int _length;

  int get length => _length;
}