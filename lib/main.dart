import "package:flutter/material.dart";

import "./homepage/homepage.dart";

main() => runApp(JamApp());

class JamApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: true,
      theme: ThemeData(primarySwatch: Colors.green),
      home: HomePage(),
    );
  }
}
