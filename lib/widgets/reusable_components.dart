import 'package:flutter/material.dart';
import 'package:flutter_html/flutter_html.dart';
import '../DataSource/Method.dart';

class DisplayedMethod extends StatelessWidget {
  const DisplayedMethod({
    Key? key,
    required this.futureMethod,
  }) : super(key: key);

  final Future<Method> futureMethod;

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
        child: Center(
      child: FutureBuilder<Method>(
        future: futureMethod,
        builder: (context, snapshot) {
          if (snapshot.hasData) {
            return Html(data: snapshot.data!.content.rendered.toString());
          } else if (snapshot.hasError) {
            return Text('${snapshot.error}');
          }

          // By default, show a loading spinner.
          return const CircularProgressIndicator();
        },
      ),
    ));
  }
}
