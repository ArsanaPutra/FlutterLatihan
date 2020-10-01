import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "Profil Testing",
      home: Scaffold(
        appBar: AppBar(
          title: Text("Profil"),
          centerTitle: true,
          backgroundColor: Colors.blue[900],
        ),
        body: BodyApp(),
      ),
    );
  }
}

class BodyApp extends StatelessWidget {
  Widget build(BuildContext context) {
    return ListView(
      children: <Widget>[
        Center(
            child: Container(
          decoration: BoxDecoration(
            image: DecorationImage(
              image: AssetImage("images/turtoise.jpg"),
              fit: BoxFit.cover,
            ),
            border: Border.all(
              color: Colors.blue[900],
              width: 1,
            ),
            borderRadius: BorderRadius.circular(100),
          ),
          width: 200,
          height: 200,
          margin: EdgeInsets.only(top: 50),
        )),
        Container(
          alignment: Alignment(0.0, 0.0),
          child: Column(
            children: <Widget>[
              Text(
                "I Putu Arsana Putra",
                style: TextStyle(
                  color: Colors.blue[900],
                  fontSize: 30,
                  fontWeight: FontWeight.bold,
                ),
              ),
              Text(
                "www.sample.com",
                style: TextStyle(
                  color: Colors.blue[900],
                  fontSize: 20,
                ),
              ),
            ],
          ),
          margin: EdgeInsets.symmetric(vertical: 20),
        ),
        GridView.count(
          shrinkWrap: true,
          crossAxisCount: 2,
          mainAxisSpacing: 40,
          crossAxisSpacing: 60,
          padding: EdgeInsets.all(20),
          primary: false,
          children: <Widget>[
            CardCustom(
                text: "Music", iconData: Icons.audiotrack, color: Colors.green),
            CardCustom(
                text: "Shop",
                iconData: Icons.shopping_cart,
                color: Colors.orange),
            CardCustom(
                text: "Share", iconData: Icons.share, color: Colors.brown),
            CardCustom(
                text: "Security", iconData: Icons.security, color: Colors.red),
          ],
        ),
      ],
    );
  }
}

class CardCustom extends StatelessWidget {
  // Contructor
  CardCustom({this.iconData, this.text, this.color});

  // Properties
  final IconData iconData;
  final String text;
  final Color color;
  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        border: Border.all(
          color: Colors.blue[900],
          width: 1,
        ),
        borderRadius: BorderRadius.only(
          topLeft: Radius.circular(30),
          topRight: Radius.circular(30),
        ),
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: <Widget>[
          Expanded(
            child: Icon(
              iconData,
              color: color,
              size: 120,
            ),
          ),
          Container(
            alignment: Alignment.center,
            color: Colors.blue[900],
            child: Text(
              "$text",
              style: TextStyle(fontSize: 25, color: Colors.white),
            ),
            width: double.infinity,
          ),
        ],
      ),
    );
  }
}
