import 'dart:async';
import 'dart:convert';
import 'package:http/http.dart' as http;
import 'items.dart' as items;

Future<Method> fetchMethod() async {
  final response = await http
      .get(Uri.parse(items.methodSource['method-prayer']));

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
  final Content content;
  final Title title;

  const Method({
    required this.content,
    required this.title,
  });


  factory Method.fromJson(Map<String, dynamic> json) {
    return Method(
      content: Content.fromJson(json["content"]),
      title: Title.fromJson(json["title"]),
    );
  }

  Map<String, dynamic> toJson() => {
    "title": title.toJson(),
    "content": content.toJson()
  };

}

class Content{
  final String rendered;

  const Content({
    required this.rendered
});

  factory Content.fromJson(Map<String, dynamic> json) => Content(
        rendered: json["rendered"]
    );

  Map<String, dynamic> toJson() => {
    "rendered": rendered,
  };

}

class Title{
  final String rendered;

  const Title({
    required this.rendered
});

  factory Title.fromJson(Map<String, dynamic> json) => Title(
      rendered: json["rendered"]
  );

  Map<String, dynamic> toJson() => {
    "rendered": rendered,
  };

}


