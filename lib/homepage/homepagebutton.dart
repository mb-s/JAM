import "package:flutter/material.dart";

class HomePageButton extends StatelessWidget {
  final String title;
  final String description;
  final Function nextScreen;

  HomePageButton({this.title, this.description, this.nextScreen});

  Widget build(BuildContext context) {
    return Container(
      width: 275,
      height: 200,
      margin: EdgeInsets.symmetric(vertical: 10),
      child: RaisedButton(
        elevation: 10,
        color: Theme.of(context).primaryColorDark,
        onPressed: nextScreen,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            Text(
              title,
              style: TextStyle(
                fontSize: 25,
                fontFamily: "OpenSans",
                fontWeight: FontWeight.bold,
                color: Colors.white,
              ),
            ),
            Text(
              description,
              style: TextStyle(
                fontFamily: "OpenSans",
                fontSize: 15,
                color: Colors.white,
              ),
              textAlign: TextAlign.center,
            )
          ],
        ),
      ),
    );
  }
}
