import 'dart:convert';
import 'dart:async';
import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;

// Future<http.Response> fetchCases() {
//   return http.get('https://disease.sh/v3/covid-19/all/');
// }

Future<Cases> fetchCases() async {
  final response = await http.get('https://disease.sh/v3/covid-19/all/');
  if (response.statusCode == 200) {
    return Cases.fromJson(json.decode(response.body));
  } else {
    throw Exception('Failed to load case');
  }
}

class Cases {
  Cases({this.cases});
  final int cases;

  factory Cases.fromJson(Map<String, dynamic> json) {
    return Cases(
      cases: json['cases'],
    );
  }
}

class Covid extends StatefulWidget {
  Covid({Key key}) : super(key: key);

  @override
  _CovidState createState() => _CovidState();
}

class _CovidState extends State<Covid> {
  Future<Cases> futureCases;

  @override
  void initState() {
    super.initState();
    futureCases = fetchCases();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: FutureBuilder<Cases>(
          future: futureCases,
          builder: (context, snapshot) {
            if (snapshot.hasData) {
              return Text(
                // ignore: unnecessary_brace_in_string_interps
                "${snapshot.data.cases}",
                style: TextStyle(fontSize: 30.0),
              );
            } else if (snapshot.hasError) {
              return Text("${snapshot.error}");
            }
            return CircularProgressIndicator();
          },
        ),
      ),
    );
  }
}
