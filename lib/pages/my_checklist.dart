import 'package:flutter/material.dart';

class MyChecklist extends StatelessWidget {
  const MyChecklist({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Tap Me Page"),
        backgroundColor: Colors.green,
      ),
    );
  }
}
