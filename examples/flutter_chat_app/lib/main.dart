import 'dart:io';

import 'package:client_sdk_dart/client_sdk_dart.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Demo Flutter Momento Chat App',
      theme: ThemeData(
        useMaterial3: true,
      ),
      home: const MyHomePage(title: 'Momento Topics Flutter Demo'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key, required this.title});

  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  static const String _momentoApiKey = "your-api-key-here";
  TopicClient _topicClient = TopicClient(
      CredentialProvider.fromString(_momentoApiKey), Mobile.latest());

  List<String> _messages = ["Welcome to Momento Topics!"];
  final TextEditingController _textInputController = TextEditingController();
  bool _isLooping = false;
  final scrollController = ScrollController();

  @override
  void initState() {
    super.initState();

    final subscribeResult = _topicClient.subscribe("cache", "topic");
    switch (subscribeResult) {
      case TopicSubscription():
        print("Successful subscription");
        subscribeResult.stream.listen((item) {
          switch (item) {
            case TopicSubscriptionItemText():
              print("Received text: ${item.value}");
              setState(() {
                _messages.add(item.value);
              });
            case TopicSubscriptionItemBinary():
              print("Received binary: ${item.value}");
              setState(() {
                _messages.add(item.value.toString());
              });
            case TopicSubscriptionItemError():
              print("Error receiving item: ${item.message}");
          }
        });
      case TopicSubscribeError():
        print("Error: ${subscribeResult.message}");
        exit(1);
    }
  }

  Future<void> publishMessage() async {
    final result = await _topicClient.publish(
        "cache", "topic", StringValue(_textInputController.text));
    switch (result) {
      case TopicPublishSuccess():
        print("Successful publish");
      case TopicPublishError():
        print("Error on publish: ${result.message}");
    }
  }

  publishOnce() async {
    await publishMessage();
    _textInputController.text = "";
  }

  publishAsLoop() async {
    _isLooping = true;
    while (_isLooping) {
      await publishMessage();
      await Future.delayed(Duration(seconds: 1));
    }
    _textInputController.text = "";
  }

  @override
  void dispose() {
    // Clean up the controller when the widget is disposed.
    _textInputController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    // This method is rerun every time setState is called, for instance as done
    // by the publishMessage method above.
    return Scaffold(
      backgroundColor: Color.fromRGBO(37, 57, 43, 1),
      body: Center(
        child: Column(
          children: <Widget>[
            Padding(
                padding: EdgeInsets.only(top: 50),
                child: const Text(
                  'Publish New Messages:',
                  style: TextStyle(
                      fontStyle: FontStyle.normal,
                      fontSize: 30,
                      color: Color.fromRGBO(196, 241, 53, 1)),
                )),
            Padding(
                padding: EdgeInsets.symmetric(horizontal: 50),
                child: TextField(
                  controller: _textInputController,
                  onSubmitted: (value) => publishOnce(),
                  decoration: InputDecoration(
                    border: OutlineInputBorder(),
                    hintText: 'Message',
                    fillColor: Colors.white,
                    filled: true,
                  ),
                )),
            Padding(
                padding: EdgeInsets.symmetric(vertical: 10),
                child: _isLooping
                    ? TextButton(
                        onPressed: () => setState(() => _isLooping = false),
                        style: ButtonStyle(
                          padding: MaterialStateProperty.all<EdgeInsets>(
                              EdgeInsets.all(15)),
                          backgroundColor: MaterialStateProperty.all<Color>(
                              Color.fromRGBO(196, 241, 53, 1)),
                          foregroundColor:
                              MaterialStateProperty.all<Color>(Colors.black),
                          shape: MaterialStateProperty.all(
                              RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(10))),
                        ),
                        child: Text('Stop looping'),
                      )
                    : TextButton(
                        onPressed: () => publishAsLoop(),
                        style: ButtonStyle(
                          padding: MaterialStateProperty.all<EdgeInsets>(
                              EdgeInsets.all(15)),
                          backgroundColor: MaterialStateProperty.all<Color>(
                              Color.fromRGBO(196, 241, 53, 1)),
                          foregroundColor:
                              MaterialStateProperty.all<Color>(Colors.black),
                          shape: MaterialStateProperty.all(
                              RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(10))),
                        ),
                        child: Text('Publish as a loop'),
                      )),
            Divider(),
            const Text(
              'Received Messages:',
              style: TextStyle(
                  fontStyle: FontStyle.normal,
                  fontSize: 30,
                  color: Color.fromRGBO(196, 241, 53, 1)),
            ),
            Expanded(
              child: Scrollbar(
                  scrollbarOrientation: ScrollbarOrientation.right,
                  controller: scrollController,
                  child: ListView.builder(
                    controller: scrollController,
                    physics: AlwaysScrollableScrollPhysics(),
                    scrollDirection: Axis.vertical,
                    padding: const EdgeInsets.symmetric(horizontal: 50),
                    shrinkWrap: true,
                    itemCount: _messages.length,
                    itemBuilder: (context, index) {
                      return Container(
                          decoration: BoxDecoration(
                            border: Border.all(
                                color: Color.fromRGBO(37, 57, 43, 1)),
                            borderRadius: BorderRadius.circular(10),
                            color: Colors.white,
                          ),
                          height: 40,
                          child: Center(child: Text(_messages[index])));
                    },
                  )),
            ),
          ],
        ),
      ),
    );
  }
}
