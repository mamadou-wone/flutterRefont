import 'dart:convert';
import 'dart:async';
import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;

// Future<http.Response> fetchCases() {
//   return http.get('https://disease.sh/v3/covid-19/all/');
// }

Future<Countrie> fetchCases() async {
  final response = await http.get('https://disease.sh/v3/covid-19/countries/');
  if (response.statusCode == 200) {
    return Countrie.fromJson(json.decode(response.body));
  } else {
    throw Exception('Failed to load case');
  }
}

class Countrie {
  Countrie({this.country});
  final String country;

  factory Countrie.fromJson(Map<String, dynamic> json) {
    return Countrie(
      country: json[0]['country'],
    );
  }
}

class CountrieCases extends StatefulWidget {
  CountrieCases({Key key}) : super(key: key);

  @override
  _CountrieCasesState createState() => _CountrieCasesState();
}

class _CountrieCasesState extends State<CountrieCases> {
  Future<Countrie> futureCases;

  @override
  void initState() {
    super.initState();
    futureCases = fetchCases();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: FutureBuilder<Countrie>(
          future: futureCases,
          builder: (context, snapshot) {
            if (snapshot.hasData) {
              var test = snapshot.data[0].country;
              return Text(
                'TEST',
                // ignore: unnecessary_brace_in_string_interps
                // "${snapshot.data.country}",
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
