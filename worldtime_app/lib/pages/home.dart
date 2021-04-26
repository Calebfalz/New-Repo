import 'package:flutter/material.dart';

class Home extends StatefulWidget {
  Home({Key key}) : super(key: key);

  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
  Map data = {};
  @override
  Widget build(BuildContext context) {
    data = ModalRoute.of(context).settings.arguments;
    print(data['time']);
    return Scaffold(
      backgroundColor: Colors.indigo,
      appBar: AppBar(
        title: Text('Home'),
        centerTitle: true,
      ),
      body: Column(
        children: [
          FlatButton.icon(
              onPressed: () {},
              icon: Icon(Icons.edit_location),
              label: Text('Choose your location')),
          Text(
            'hi',
            style: TextStyle(
              fontSize: 40.0,
            ),
          ),
        ],
      ),
    );
  }
}
