import '../../../responses_base.dart';

sealed class ListConcatenateBackResponse {}

class ListConcatenateBackSuccess implements ListConcatenateBackResponse {
  ListConcatenateBackSuccess(this._length);

  final int _length;

  int get length => _length;
}

class ListConcatenateBackError extends ErrorResponseBase implements ListConcatenateBackResponse {
  ListConcatenateBackError(super.exception);
}
