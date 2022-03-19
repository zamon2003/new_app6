import 'package:flutter/material.dart';
import 'package:new_app6/pages/home_page.dart';

class SecondPage extends StatefulWidget {
  static String get id => 'second_page';

  const SecondPage({Key? key}) : super(key: key);

  @override
  State<SecondPage> createState() => _SecondPageState();
}

class _SecondPageState extends State<SecondPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Container(
          height: 60,
          width: 220,
          color: Colors.green,
          child: FlatButton(
            child: Text(
              'Home Page',
              style: TextStyle(color: Colors.black87, fontSize: 21),
            ),
            onPressed: () {
              Navigator.pushReplacementNamed(context, HomePage.id);
            },
          ),
        ),
      ),
    );
  }
}
