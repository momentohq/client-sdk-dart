// // TODO: Put public facing types in this file.
//
// import 'dart:typed_data';
//
// import '../generated/cachepubsub.pb.dart';
// import 'package:grpc/grpc.dart';
//
// sealed class Value {}
// class StringValue  implements Value {
//   String _value;
//   StringValue(String v) : _value = v;
//   String get value => _value;
// }
//
// class BinaryValue implements Value {
//   Uint8List _value;
//   BinaryValue(Uint8List v) : _value = v;
//   Uint8List get value => _value;
// }
//
// abstract class ITopicClient {
//   void publish(String cacheName, String topicName, Value value);
// }
//
// class TopicClient implements ITopicClient {
//   ClientChannel _channel;
//
//   TopicClient() {
//     _channel = ClientChannel(host)
//   }
//   @override
//   void publish() {
//     // TODO: implement publish
//   }
//
//   void close() {
//
//   }
// }
//
// /// Checks if you are awesome. Spoiler: you are.
// class Awesome {
//   bool get isAwesome => true;
// }
