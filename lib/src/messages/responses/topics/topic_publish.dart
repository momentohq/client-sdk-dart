import 'package:momento/src/messages/responses/responses_base.dart';

sealed class TopicPublishResponse {}

class TopicPublishSuccess extends NonErroResponseBase
    implements TopicPublishResponse {
  TopicPublishSuccess({String message = "TopicPublishSuccess"})
      : super(message);
}

class TopicPublishError extends ErrorResponseBase
    implements TopicPublishResponse {
  TopicPublishError(super.exception);
}
