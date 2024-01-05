import '../../../responses_base.dart';

sealed class ListConcatenateFrontResponse {}

class ListConcatenateFrontSuccess implements ListConcatenateFrontResponse {
  ListConcatenateFrontSuccess(this._length);

  final int _length;

  int get length => _length;
}

class ListConcatenateFrontError extends ErrorResponseBase implements ListConcatenateFrontResponse {
  ListConcatenateFrontError(super.exception);
}
