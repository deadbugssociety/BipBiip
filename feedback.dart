import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

class Feedbacking extends StatefulWidget {
  const Feedbacking({Key key}) : super(key: key);

  @override
  _FeedbackingState createState() => _FeedbackingState();
}

class _FeedbackingState extends State<Feedbacking> {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[300],
      appBar: AppBar(
        iconTheme: IconThemeData(color: Colors.blue[800]),
        backgroundColor: Colors.grey[400],
        elevation: 2.0,
        centerTitle: true,
        title: Text(
          "Feedback",
          style: TextStyle(color: Colors.blue[800], fontWeight: FontWeight.bold),
        ),
        leading: IconButton(
          icon: Icon(Icons.arrow_back),
          onPressed: () {
            Navigator.pushNamed(context, "/home");
          },
        ),
      ),
      body: Padding(
        padding: EdgeInsets.all(30.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: <Widget>[
            SizedBox(height: 150.0),
            Text(
              "You can give us feedback by sending email.",
              textAlign: TextAlign.center,
            ),
            SizedBox(height: 15.0),
            IconButton(
                onPressed: (){
                   launch("mailto:deadbugssocietygtu@gmail.com?subject=Feedback_BipBiip");
                },
                icon: Icon(
                    Icons.mail,
                    color: Colors.blue[800],
                    size: 80.0,
                ),
            ),
          ],
        ),
      ),
    );
  }
}
