import 'package:flutter/material.dart';

class AboutUs extends StatelessWidget {
  const AboutUs({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[300],
      body: Padding(
        padding: EdgeInsets.symmetric(vertical: 200.0, horizontal: 30.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: <Widget>[
            Center(
              child: Text(
                "BipBiip",
                style: TextStyle(
                  color: Colors.grey[700],
                  fontSize: 20.0,
                  fontWeight: FontWeight.w500,
                  letterSpacing: 0.5,
                ),
              ),
            ),
            SizedBox(height: 5.0),
            Center(
              child: Text(
                "Version 1.0.0.1 (Beta)",
                style: TextStyle(
                  color: Colors.grey[600],
                  fontSize: 15.0,
                  fontWeight: FontWeight.w400,
                  letterSpacing: 0.5,
                ),
              ),
            ),
            SizedBox(height: 15.0),
            Center(
              child: CircleAvatar(
                backgroundImage: AssetImage("assets/bipbiip.jpeg"),
                radius: 85.0,
              ),
            ),
            SizedBox(height: 15.0),
            Center(
              child: Text(
                "© 2021 DeadBugsSociety",
                style: TextStyle(
                  color: Colors.grey[600],
                  fontSize: 15.0,
                  fontWeight: FontWeight.w400,
                  letterSpacing: 0.5,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

