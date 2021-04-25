import 'package:flutter/material.dart';

class Loading extends StatefulWidget {
  Loading({Key key}) : super(key: key);

  @override
  _LoadingState createState() => _LoadingState();
}

class _LoadingState extends State<Loading> {
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    print('This is my state');
  }

  @override
  Widget build(BuildContext context) {
    print('BUild state');
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
