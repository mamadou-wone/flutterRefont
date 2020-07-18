import 'dart:async';
import 'dart:convert';

import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;

Future<Weather> fetchWeather() async {
  final response = await http.get(
      'http://api.openweathermap.org/data/2.5/weather?q=Dakar&appid=d25716d961a86dd8ad7a074fd248ff59&units=metric');

  if (response.statusCode == 200) {
    // If the server did return a 200 OK response,
    // then parse the JSON.
    return Weather.fromJson(json.decode(response.body));
  } else {
    // If the server did not return a 200 OK response,
    // then throw an exception.
    throw Exception('Failed to load album');
  }
}

class Weather {
  final int maxTemp;

  Weather({this.maxTemp});
  factory Weather.fromJson(Map<String, dynamic> json) {
    return Weather(maxTemp: json['maxTemp']);
  }

  // get main => null;
}

class Meteo extends StatefulWidget {
  Meteo({Key key}) : super(key: key);

  @override
  _MeteoState createState() => _MeteoState();
}

class _MeteoState extends State<Meteo> {
  Future<Weather> futureWeather;

  @override
  void initState() {
    super.initState();
    futureWeather = fetchWeather();
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
          title: Text('Fetch Data Example'),
        ),
        body: Center(
          child: FutureBuilder<Weather>(
            future: futureWeather,
            builder: (context, snapshot) {
              if (snapshot.hasData) {
                return Text(
                  // var temp = data['main']['temp_max'];
                  snapshot.data.,
                  style: TextStyle(fontSize: 30.0),
                );
              } else if (snapshot.hasError) {
                return Text("${snapshot.error}");
              }

              // By default, show a loading spinner.
              return CircularProgressIndicator();
            },
          ),
        ),
      ),
    );
  }
}
