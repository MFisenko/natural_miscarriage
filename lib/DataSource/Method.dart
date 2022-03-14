import 'dart:async';
import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:flutter_html/flutter_html.dart';
import 'package:http/http.dart' as http;

Future<Method> fetchMethod() async {
  final response = await http
      .get(Uri.parse('https://www.naturalmiscarriage.org/wp-json/wp/v2/pages/1043'));

  if (response.statusCode == 200) {
    // If the server did return a 200 OK response,
    // then parse the JSON.
    return Method.fromJson(jsonDecode(response.body));
  } else {
    // If the server did not return a 200 OK response,
    // then throw an exception.
    throw Exception('Failed to load Method');
  }
}

class Method {
  final String content;
  final String title;

  const Method({
    required this.content,
    required this.title,
  });


  factory Method.fromJson(Map<String, dynamic> json) {
    return Method(
      content: json["content"].toString(),
      title: json["title"].toString()
    );
  }
}

void main() => runApp(const MyApp());

class MyApp extends StatefulWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  late Future<Method> futureMethod;

  @override
  void initState() {
    super.initState();
    futureMethod = fetchMethod();
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Fetch Data Example',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: Scaffold(
        appBar: AppBar(
          title: FutureBuilder<Method>(future: futureMethod, builder: (context, snapshot){return Text(snapshot.data!.title);},),
        ),
        body: Center(
          child: FutureBuilder<Method>(
            future: futureMethod,
            builder: (context, snapshot) {
              if (snapshot.hasData) {
                return Html(data: snapshot.data!.content);
              } else if (snapshot.hasError) {
                return Text('${snapshot.error}');
              }

              // By default, show a loading spinner.
              return const CircularProgressIndicator();
            },
          ),
        ),
      ),
    );
  }
}