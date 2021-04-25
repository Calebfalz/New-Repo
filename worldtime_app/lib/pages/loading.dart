import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;

class Loading extends StatefulWidget {
  Loading({Key key}) : super(key: key);

  @override
  _LoadingState createState() => _LoadingState();
}

class _LoadingState extends State<Loading> {
  void getData() async {
    var url = Uri.parse('http://worldtimeapi.org/api/timezone/Africa/Lagos');
    http.Response response = await http.get(url);
    print(response.body);
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
        body: SafeArea(
      child: Column(
        children: [
          Text('Loading'),
          FlatButton(
            onPressed: () {
              Navigator.pushNamed(context, '/home');
            },
            child: Text('Click'),
            color: Colors.red[900],
          )
        ],
      ),
    ));
  }
}
