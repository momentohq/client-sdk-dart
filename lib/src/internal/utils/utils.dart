import 'package:momento/momento.dart';
import 'package:momento/src/errors/errors.dart';

Value getStringOrBinaryFromDynamic(dynamic value, String parameterName) {
  if (value is String) {
    return StringValue(value);
  } else if (value is List<int>) {
    return BinaryValue(value);
  } else {
    throw InvalidArgumentException(
        "$parameterName must be a String or List<int>", null, null);
  }
}

List<Value> getListOfStringOrBinaryFromDynamic(
    List<dynamic> values, String parameterName) {
  final list = <Value>[];
  for (final value in values) {
    list.add(getStringOrBinaryFromDynamic(value, parameterName));
  }
  return list;
}
