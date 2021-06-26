import 'package:curved_navigation_bar/curved_navigation_bar.dart';
import 'package:flutter/material.dart';

class Myhomepage extends StatefulWidget {
  const Myhomepage({Key key}) : super(key: key);

  @override
  _MyhomepageState createState() => _MyhomepageState();
}

class _MyhomepageState extends State<Myhomepage> {
  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return new Scaffold(
      appBar: new AppBar(
        backgroundColor: Colors.white,
        title: new Text(
          "flutter app",
          style: new TextStyle(color: Colors.black),
        ),
      ),
      body: new Container(
        color: Colors.deepOrange,
        height: size.height,
        width: size.width,
        child: new Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            new Text(
              "best navigation",
              style: new TextStyle(fontSize: 16, color: Colors.white),
            )
          ],
        ),
      ),
      bottomNavigationBar: new CurvedNavigationBar(
          color: Colors.white,
          backgroundColor: Colors.deepOrange,
          buttonBackgroundColor: Colors.white,
          height: 50,
          animationDuration: new Duration(milliseconds: 200),
          animationCurve: Curves.easeInOut,
          index: 2,
          onTap: (index) {
            print("shoma $index bar zadi roosh");
          },
          items: <Widget>[
            Icon(
              Icons.verified_user,
              size: 20,
              color: Colors.black,
            ),
            Icon(
              Icons.list,
              size: 20,
              color: Colors.black,
            ),
            Icon(
              Icons.add,
              size: 20,
              color: Colors.black,
            ),
            Icon(
              Icons.favorite,
              size: 20,
              color: Colors.black,
            ),
            Icon(
              Icons.exit_to_app,
              size: 20,
              color: Colors.black,
            ),
          ]),
    );
  }
}
