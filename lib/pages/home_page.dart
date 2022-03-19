import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:new_app6/pages/second_page.dart';

class HomePage extends StatefulWidget {
  static const String id = 'home_page';

  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      //appbar yaratish
      appBar: AppBar(
        backgroundColor: Colors.green,
        title: Text(
          'Telegram',
          style: TextStyle(color: Colors.yellow, fontSize: 30),
        ),
        centerTitle: true,
        actions: [
          FlatButton(onPressed: () {}, child: Icon(Icons.search)),
          Icon(
            Icons.notifications,
          ),
          SizedBox(
            width: 15,
          ),
          Icon(Icons.search),
          SizedBox(
            width: 15,
          ),
        ],
        elevation: 0,
      ),

      body: Center(
        child: Container(
          height: 60,
          width: 220,
          color: Colors.blue,
          child: FlatButton(
            onPressed: () {
              Navigator.pushReplacementNamed(context, SecondPage.id);
            },
            child: Text(
              'Next Page',
              style: TextStyle(color: Colors.black, fontSize: 22),
            ),
          ),
        ),
      ),
      floatingActionButton: FloatingActionButton(
        child: Icon(Icons.add),
        onPressed: () {},
      ),
    );
  }
}
