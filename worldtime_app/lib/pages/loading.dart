import 'dart:convert';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
import 'package:intl/intl.dart';
import 'package:worldtime_app/services/worldtime_api.dart';

class Loading extends StatefulWidget {
  Loading({Key key}) : super(key: key);

  @override
  _LoadingState createState() => _LoadingState();
}

class _LoadingState extends State<Loading> {
  void getData() async {
    WorldtimeApi api = WorldtimeApi(url: 'America/Chicago', location: 'London');
    await api.mainData();
    setState(() {
      Navigator.pushReplacementNamed(context, '/home', arguments: {
        '/url': api.url,
        '/location': api.location,
        '/flag': api.flag,
        '/time': api.time
      });
    });
  }

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    getData();
    print('This is my state');
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.indigo,
      body: SpinKitSquareCircle(
        color: Colors.white,
        size: 55.0,
      ),
    );
  }
}
