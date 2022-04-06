import 'package:flutter/material.dart';
import 'settingspage.dart';
import 'package:bipbiip/timerback.dart';
import 'package:bipbiip/Mapscreen.dart';
import 'package:bipbiip/Busschedule.dart';
import 'homepage.dart';
import 'auth.dart';
import 'loading.dart';
import 'dart:io';

class StudentScreen extends StatefulWidget {

  @override
  _StudentScreenState createState() => _StudentScreenState();

}

class _StudentScreenState extends State<StudentScreen> {

  final AuthService _auth = AuthService();

  bool loading = false;

  @override
  Widget build(BuildContext context) {
    return loading ? Loading() : Scaffold(
        extendBodyBehindAppBar: true,
        appBar: AppBar(
          elevation:0.5,
          backgroundColor: Colors.transparent,
          title: const Text(
              "Öğrenci Ana Sayfa", style: TextStyle(fontSize: 22)),
          leading: IconButton(
            onPressed: ()=> exit(0),
            icon: const Icon(
              Icons.arrow_back,
              color: Colors.white,
            ),
          ),
          actions: <Widget>[
            FlatButton.icon(
              icon: Icon(Icons.person),
              label: Text('Çıkış yap'),
              onPressed: () async {
                setState(() => loading = true);
                dynamic result = await _auth.signOut();
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => Home()),
                );
              },
            ),
          ],
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
          child:Center(
            child: Padding(
              padding: const EdgeInsets.only(top:30.0),
              child: Column(
                children: <Widget>[
                  Row(
                    children: <Widget>[
                      ElevatedButton(
                        style: ElevatedButton.styleFrom(
                          primary: Colors.deepOrange,
                          minimumSize: const Size(180.0, 180.0),
                          shape: RoundedRectangleBorder( //to set border radius to button
                              borderRadius: BorderRadius.circular(10)
                          ),
                        ),
                        onPressed: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(builder: (context) =>MapScreen()),
                          );
                        },
                        child: const Text("Duraklar",
                            style: TextStyle(
                                fontSize: 22, fontWeight: FontWeight.normal)),
                      ), //Container
                      const SizedBox(
                        width: 10,
                        height: 5,
                      ), //SizedBox
                      ElevatedButton(
                        style: ElevatedButton.styleFrom(
                          primary: Colors.deepOrange,
                          minimumSize: const Size(180.0, 180.0),
                          shape: RoundedRectangleBorder( //to set border radius to button
                              borderRadius: BorderRadius.circular(10)
                          ),
                        ),
                        onPressed: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(builder: (context) =>buschedule()),
                          );
                        },
                        child: const Text("Servis Saatleri",
                            style: TextStyle(
                                fontSize: 22, fontWeight: FontWeight.normal)),
                      ), //Container
                    ], //<Widget>[]
                    mainAxisAlignment: MainAxisAlignment.center,
                  ), //Row
                  Row(
                    children: <Widget>[
                      ElevatedButton(
                        style: ElevatedButton.styleFrom(
                          primary: Colors.deepOrange,
                          minimumSize: const Size(180.0, 180.0),
                          shape: RoundedRectangleBorder( //to set border radius to button
                              borderRadius: BorderRadius.circular(10)
                          ),
                        ),
                        onPressed: () {

                        },
                        child: const Text("Servis Takip",
                            style: TextStyle(
                                fontSize: 22, fontWeight: FontWeight.normal)),
                      ), //SizedBox//Container
                      const SizedBox(
                        width: 10,
                        height: 5,
                      ),
                      ElevatedButton(
                        style: ElevatedButton.styleFrom(
                          primary: Colors.deepOrange,
                          minimumSize: const Size(180.0, 180.0),
                          shape: RoundedRectangleBorder( //to set border radius to button
                              borderRadius: BorderRadius.circular(10)
                          ),
                        ),
                        onPressed: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(builder: (context) =>TimerBack()),
                          );
                        },
                        child: const Text("Servise" '\n'"Yakınım" '\n'"Butonu", style: TextStyle(
                            fontSize: 22, fontWeight: FontWeight.normal)),
                      ) //SizedBox

                    ], //<Widget>[]
                    mainAxisAlignment: MainAxisAlignment.center,
                  ), //Row
                  Row(
                    children: <Widget>[
                      ElevatedButton(
                        style: ElevatedButton.styleFrom(
                          primary: Colors.deepOrange,
                          minimumSize: const Size(180.0, 180.0),
                          shape: RoundedRectangleBorder( //to set border radius to button
                              borderRadius: BorderRadius.circular(10)
                          ),
                        ),
                        onPressed: () {

                        },
                        child: const Text("Ödeme Bilgileri",
                            style: TextStyle(
                                fontSize: 22, fontWeight: FontWeight.normal)),
                      ), //Container
                      const SizedBox(
                        width: 10,
                        height: 5,
                      ), //SizedBox
                      ElevatedButton(
                        style: ElevatedButton.styleFrom(
                          primary: Colors.deepOrange,
                          minimumSize: const Size(180.0, 180.0),
                          shape: RoundedRectangleBorder( //to set border radius to button
                              borderRadius: BorderRadius.circular(10)
                          ),
                        ),
                        onPressed: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => const SettingPageUI()),
                          );
                        },
                        child: const Text("Ayarlar", style: TextStyle(
                            fontSize: 22, fontWeight: FontWeight.normal)),
                      ), //Container

                    ], //<Widget>[]
                    mainAxisAlignment: MainAxisAlignment.center,
                  ), //Row
                ], //<widget>[]
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                crossAxisAlignment: CrossAxisAlignment.center,
              ), //Column
            ), //Container
          ),
        )//Center


    );
  }

}