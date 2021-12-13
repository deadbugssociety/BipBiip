import 'package:flutter/material.dart';
import 'Login.dart';
import 'ChangeEmail.dart';
import 'ChangePassword.dart';
import 'ForgotPassword.dart';
import 'Signup.dart';
import 'ChangePhoneNumber.dart';
import 'UserType.dart';

class Login extends StatelessWidget {

  bool _value = false;

  TextEditingController nameController = TextEditingController();
  TextEditingController passwordController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Color.fromRGBO(43,50,62,1),
        appBar: AppBar(
          title: Text(
              'Giriş Ekranı',
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
                      'Tekrar Hoşgeldin!',
                      style: TextStyle(
                          color: Color.fromRGBO(69,116,207,1),
                          fontWeight: FontWeight.w500,
                          fontSize: 30),
                    )),
                Container(
                    alignment: Alignment.center,
                    padding: EdgeInsets.all(10),
                    child: Text(
                        'Seni gördüğümüze çok sevindik!',
                        style: TextStyle(
                          fontSize: 20,
                          color: Color.fromRGBO(69,116,207,1),
                        ))),
                Container(
                  padding: EdgeInsets.all(10),
                  child: TextField(
                    controller: nameController,
                    decoration: InputDecoration(
                        border: OutlineInputBorder(),
                        labelText: 'İsim - Soyisim',
                        labelStyle: TextStyle(
                          color: Color.fromRGBO(69,116,207,1),
                        )
                    ),
                  ),
                ),
                Container(
                  padding: EdgeInsets.fromLTRB(10, 10, 10, 0),
                  child: TextField(
                    obscureText: true,
                    controller: passwordController,
                    decoration: InputDecoration(
                        border: OutlineInputBorder(),
                        labelText: 'Şifre',
                        labelStyle: TextStyle(
                          color: Color.fromRGBO(69,116,207,1),
                        )
                    ),
                  ),
                ),
                Container(
                    padding: EdgeInsets.fromLTRB(10, 0, 10, 0),
                    child: Row(
                      children: <Widget>[
                        Checkbox(
                            value: _value,
                            onChanged: (value) {

                            }),
                        Text(
                          'Beni hatırla',
                          style: TextStyle(fontSize: 17.0),
                        )
                      ],
                    )
                ),
                //Text
                FlatButton(
                  onPressed: (){
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => ForgotPassword()),
                    );
                  },
                  textColor: Color.fromRGBO(69,116,207,1),
                  child: Text('Şifreni mi Unuttun?'),
                ),
                Container(
                    height: 50,
                    padding: EdgeInsets.fromLTRB(10, 0, 10, 0),
                    child: RaisedButton(
                      textColor: Color.fromRGBO(43,50,62,1),
                      color: Color.fromRGBO(69,116,207,1),
                      child: Text('Giriş'),
                      onPressed: () {
                        print(nameController.text);
                        print(passwordController.text);
                      },
                    )),
                Container(
                    child: Row(
                      children: <Widget>[
                        Text('Hesabın yok mu?',
                          style: TextStyle(
                            fontSize: 20,
                            color: Color.fromRGBO(69,116,207,1),
                          ),
                        ),
                        FlatButton(
                          textColor: Color.fromRGBO(69,116,207,1),
                          child: Text(
                            'Kaydol',
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
                      mainAxisAlignment: MainAxisAlignment.center,
                    ))
              ],
            ))));
  }
}
