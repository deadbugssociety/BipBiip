import 'package:flutter/material.dart';
import 'Login.dart';
import 'ChangeEmail.dart';
import 'ChangePassword.dart';
import 'ForgotPassword.dart';
import 'Signup.dart';
import 'ChangePhoneNumber.dart';
import 'UserType.dart';

void main() {
  runApp(MaterialApp(
    home: MyApp(),
  ));
}

class MyApp extends StatefulWidget {
  @override
  Home createState() => Home();
}

class Home extends State<MyApp> {
  TextEditingController nameController = TextEditingController();
  TextEditingController passwordController = TextEditingController();

  @override
  Widget build(BuildContext context) {

    return Scaffold(
        backgroundColor: Color.fromRGBO(43,50,62,1),
        appBar: AppBar(
          elevation: 0.5,
          backgroundColor: Colors.transparent,
          title: Text(
              'BipBiip',
              style: TextStyle(
                color: Color.fromRGBO(43,50,62,1),
              )
          ),
          backgroundColor: Color.fromRGBO(69,116,207,1),
        ),
        body: Container(
            decoration: BoxDecoration(
              gradient: LinearGradient(
                colors: [
                  //Color.fromRGBO(245, 101, 3, 1),
                  Color.fromRGBO(211, 87, 3, 1),
                  Color.fromRGBO(24, 28, 79, 1),
                  Color.fromRGBO(14, 17,53, 1),
                ],
                begin: Alignment.topCenter,
                end: Alignment.bottomCenter,
              ),
            ),
            child: Padding(
                padding: EdgeInsets.all(10),
                child: ListView(
                  children: <Widget>[
                    Container(
                        alignment: Alignment.center,
                        padding: EdgeInsets.all(10),
                        child: Text(
                          'Hoşgeldin!',
                          style: TextStyle(
                              color: Color.fromRGBO(69,116,207,1),
                              fontWeight: FontWeight.w500,
                              fontSize: 60),
                        )),
                    SizedBox(height: 100),
                    Container(
                        height: 50,
                        padding: EdgeInsets.fromLTRB(10, 0, 10, 0),
                        child:
                        RaisedButton(
                          textColor: Color.fromRGBO(43,50,62,1),
                          color: Color.fromRGBO(69,116,207,1),
                          child: Text('Giriş'),
                          onPressed: () {
                            Navigator.push(
                              context,
                              MaterialPageRoute(builder: (context) => UserType()),
                            );
                          },
                        )),
                    SizedBox(height: 100),
                    Container(
                        child: Row(
                          children: <Widget>[
                            Text('Bir hesaba mı ihtiyacın var?',
                              style: TextStyle(
                                fontSize: 20,
                                color: Color.fromRGBO(69,116,207,1),
                              ),
                            ),
                            FlatButton(
                              textColor: Color.fromRGBO(69,116,207,1),
                              child: Text(
                                'Kaydol!',
                                style: TextStyle(fontSize: 20),
                              ),
                              onPressed: () {
                                Navigator.push(
                                  context,
                                  MaterialPageRoute(builder: (context) => Signup()),
                                );
                              },
                            )
                          ],
                          mainAxisAlignment: MainAxisAlignment.spaceAround,
                        ))
                  ],
                ))));
  }
}