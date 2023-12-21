import 'dart:convert';

sealed class Value {
  List<int> toBinary();
  String toUtf8();
}

class StringValue implements Value {
  final String _value;
  StringValue(String v) : _value = v;
  String get value => _value;

  @override
  toBinary() {
    return utf8.encode(_value);
  }

  @override
  toUtf8() {
    return _value;
  }
}

class BinaryValue implements Value {
  final List<int> _value;
  BinaryValue(List<int> v) : _value = v;
  List<int> get value => _value;

  @override
  List<int> toBinary() {
    return _value;
  }

  @override
  String toUtf8() {
    return utf8.decode(_value);
  }
}
