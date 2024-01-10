import 'package:momento/src/messages/responses/responses_base.dart';

sealed class TopicPublishResponse {}

class TopicPublishSuccess extends ResponseBase
    implements TopicPublishResponse {}

class TopicPublishError extends ErrorResponseBase
    implements TopicPublishResponse {
  TopicPublishError(super.exception);
}
