import "package:flutter/material.dart";

import "./homepagebutton.dart";

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  String _pressedButton = "";

  void _changePressedLabel(String newLabel) {
    setState(() {
      _pressedButton = newLabel;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text("Welcome to JAM!"),
            Text(
              "What would yo like to do?",
              style: TextStyle(fontSize: 15),
            )
          ],
        ),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            HomePageButton(
              title: "DJ",
              description: "Share your music with others in your area",
              nextScreen: () {
                _changePressedLabel("DJ");
              },
            ),
            Text("user chose to: $_pressedButton"),
            HomePageButton(
              title: "Listen",
              description: "To other people's stations",
              nextScreen: () {
                _changePressedLabel("Listen");
              },
            ),
          ],
        ),
      ),
    );
  }
}
