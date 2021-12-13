import 'package:flutter/material.dart';
import 'Login.dart';
import 'ChangeEmail.dart';
import 'ChangePassword.dart';
import 'ForgotPassword.dart';
import 'Signup.dart';
import 'ChangePhoneNumber.dart';
import 'UserType.dart';

class UserType extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text("Kullanıcı Tipi"),
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
                  SizedBox(height: 100),
                  Container(
                      height: 50,
                      padding: EdgeInsets.fromLTRB(10, 0, 10, 0),
                      child:
                      RaisedButton(
                        textColor: Color.fromRGBO(43,50,62,1),
                        color: Color.fromRGBO(69,116,207,1),
                        child: Text('Öğrenci'),
                        onPressed: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(builder: (context) => Login()),
                          );
                        },
                      )),
                  SizedBox(height: 30),
                  Container(
                      height: 50,
                      padding: EdgeInsets.fromLTRB(10, 0, 10, 0),
                      child:
                      RaisedButton(
                        textColor: Color.fromRGBO(43,50,62,1),
                        color: Color.fromRGBO(69,116,207,1),
                        child: Text('Şoför'),
                        onPressed: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(builder: (context) => Login()),
                          );
                        },
                      )),
                  SizedBox(height: 30),
                  Container(
                      height: 50,
                      padding: EdgeInsets.fromLTRB(10, 0, 10, 0),
                      child:
                      RaisedButton(
                          textColor: Color.fromRGBO(43,50,62,1),
                          color: Color.fromRGBO(69,116,207,1),
                          child: Text('Yönetici'),
                          onPressed: () {
                            Navigator.push(
                              context,
                              MaterialPageRoute(builder: (context) => Login()),
                            );
                          }
                      )),
                ]
            )
        )
    ));
  }
}