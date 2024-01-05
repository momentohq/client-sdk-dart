import 'dart:convert';

import '../../../responses_base.dart';

sealed class ListPushBackResponse {}

class ListPushBackMiss implements ListPushBackResponse {}

class ListPushBackError extends ErrorResponseBase
    implements ListPushBackResponse {
  ListPushBackError(super.exception);
}

class ListPushBackHit implements ListPushBackResponse {
  ListPushBackHit(this._length);

  final int _length;

  int get length => _length;
}
