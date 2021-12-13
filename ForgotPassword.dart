import 'package:flutter/material.dart';
import 'Login.dart';
import 'ChangeEmail.dart';
import 'ChangePassword.dart';
import 'ForgotPassword.dart';
import 'Signup.dart';
import 'ChangePhoneNumber.dart';
import 'UserType.dart';

class ForgotPassword extends StatelessWidget {

  TextEditingController emailController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Color.fromRGBO(43,50,62,1),
        appBar: AppBar(
          title: Text(
              'Şifremi Unuttum',
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
                      'Şifreni mi unuttun?',
                      style: TextStyle(
                          color: Color.fromRGBO(69,116,207,1),
                          fontWeight: FontWeight.w500,
                          fontSize: 30),
                    )),
                SizedBox(height: 10),
                Container(
                    alignment: Alignment.center,
                    padding: EdgeInsets.all(10),
                    child: Text(
                        'Problem değil, adımları takip et. Şifreni sıfırlayacak ve yeni bir şifre alacaksın.',
                        style: TextStyle(
                          fontSize: 20,
                          color: Color.fromRGBO(69,116,207,1),
                        ))),
                SizedBox(height: 10),
                Container(
                  padding: EdgeInsets.all(10),
                  child: TextField(
                    controller: emailController,
                    decoration: InputDecoration(
                        border: OutlineInputBorder(),
                        labelText: 'E-mail adresi',
                        labelStyle: TextStyle(
                          color: Color.fromRGBO(69,116,207,1),
                        )
                    ),
                  ),
                ),
                SizedBox(height: 10),
                Container(
                    height: 50,
                    padding: EdgeInsets.fromLTRB(10, 0, 10, 0),
                    child: RaisedButton(
                      textColor: Color.fromRGBO(43,50,62,1),
                      color: Color.fromRGBO(69,116,207,1),
                      child: Text('Şifremi sıfırla'),
                      onPressed: () {
                        print(emailController.text);
                        Navigator.push(
                          context,
                          MaterialPageRoute(builder: (context) => ResetPassword()),
                        );
                      },
                    )),
                SizedBox(height: 10),
                Container(
                    child: Row(
                      children: <Widget>[
                        Text('Ya da geri dön',
                          style: TextStyle(
                            fontSize: 20,
                            color: Color.fromRGBO(69,116,207,1),
                          ),
                        ),
                        FlatButton(
                          textColor: Color.fromRGBO(69,116,207,1),
                          child: Text(
                            'Giriş Sayfası',
                            style: TextStyle(fontSize: 20),
                          ),
                          onPressed: () {
                            Navigator.push(
                              context,
                              MaterialPageRoute(builder: (context) => Login()),
                            );
                          },
                        )
                      ],
                      mainAxisAlignment: MainAxisAlignment.center,
                    ))
              ],
            ))));
  }
}

class ResetPassword extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Color.fromRGBO(43,50,62,1),
        appBar: AppBar(
          title: Text(
              'Şifremi Sıfırla',
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
                    child: Icon(
                      Icons.email_outlined,
                      color: Color.fromRGBO(69,116,207,1),
                      size: 200.0,
                    )),
                SizedBox(height: 10),
                Container(
                    alignment: Alignment.center,
                    padding: EdgeInsets.all(10),
                    child: Text(
                        'Mailini kontrol et!',
                        style: TextStyle(
                          fontSize: 30,
                          color: Color.fromRGBO(69,116,207,1),
                        ))),
                SizedBox(height: 10),
                Container(
                    height: 50,
                    alignment: Alignment.center,
                    padding: EdgeInsets.fromLTRB(10, 0, 10, 0),
                    child: Text(
                        'Mail adresine şifre sıfırlama linki gönderdik.',
                        style: TextStyle(
                          fontSize: 15,
                          color: Color.fromRGBO(69,116,207,1),
                        ))),
                SizedBox(height: 5),
                Container(
                    height: 50,
                    alignment: Alignment.center,
                    padding: EdgeInsets.fromLTRB(10, 0, 10, 0),
                    child: Text(
                        'Eğer mail almadıysan spam klasörünü kontrol et.',
                        style: TextStyle(
                          fontSize: 15,
                          color: Color.fromRGBO(69,116,207,1),
                        ))),
                SizedBox(height: 5),
                Container(
                    height: 50,
                    padding: EdgeInsets.fromLTRB(10, 0, 10, 0),
                    child: FlatButton(
                      textColor: Color.fromRGBO(69,116,207,1),
                      child: Text(
                        'ya da tekrar gönder',
                        style: TextStyle(fontSize: 20),
                      ),
                      onPressed: () {
                        //send change password mail
                      },
                    )),
                SizedBox(height: 10),
                Container(
                    height: 50,
                    padding: EdgeInsets.fromLTRB(10, 0, 10, 0),
                    child: RaisedButton(
                      textColor: Color.fromRGBO(43,50,62,1),
                      color: Color.fromRGBO(69,116,207,1),
                      child: Text('Devam Et'),
                      onPressed: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(builder: (context) => ChangePassword()),
                        );
                      },
                    ))
              ],
            ))));
  }
}