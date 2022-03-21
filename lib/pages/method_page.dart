import 'package:flutter/material.dart';
import 'package:flutter_html/flutter_html.dart';

import '../DataSource/Method.dart';
import '../widgets/reusable_components.dart';


void main() => runApp(const MethodPage());

class MethodPage extends StatefulWidget {
  const MethodPage({Key? key}) : super(key: key);

  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MethodPage> {
  late Future<Method> futureMethod;

  @override
  void initState() {
    super.initState();
    futureMethod = fetchMethod();
  }

  @override
  Widget build(BuildContext context) {

    return MaterialApp(
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: Scaffold(
        appBar: AppBar(
          title: FutureBuilder<Method>(future: futureMethod, builder: (context, snapshot){
            if (snapshot.hasData) { return Text(snapshot.data!.title.rendered); }

            else if (snapshot.hasError) { return Text('${snapshot.error}'); }


            return const CircularProgressIndicator();},),
        ),
        body: DisplayedMethod(futureMethod: futureMethod),
      ),
    );
  }
}
