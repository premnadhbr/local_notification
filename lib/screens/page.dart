import 'package:flutter/material.dart';
import 'package:local_push/services.dart';

class FirstPage extends StatefulWidget {
  const FirstPage({super.key});

  @override
  State<FirstPage> createState() => _FirstPageState();
}

class _FirstPageState extends State<FirstPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Center(
        child: ElevatedButton(
            onPressed: () {
              LocalNotification.showSimpleNotification(
                  title: "Simple Notification",
                  body: "This is a simple notification",
                  payload: "This is a simple data");
            },
            child: const Text("Click")),
      ),
    );
  }
}
