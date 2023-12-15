sealed class Value {}

class StringValue implements Value {
  final String _value;
  StringValue(String v) : _value = v;
  String get value => _value;
}

class BinaryValue implements Value {
  final List<int> _value;
  BinaryValue(List<int> v) : _value = v;
  List<int> get value => _value;
}
