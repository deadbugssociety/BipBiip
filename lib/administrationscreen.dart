import 'package:flutter/material.dart';
import 'settingspage.dart';
import 'paymentconfirm.dart';
import 'stopaddremove.dart';
import 'studentaddremove.dart';
import 'driveraddremove.dart';
import 'homepage.dart';
import 'dart:io';
import 'auth.dart';
import 'loading.dart';

class AdministrationScreen extends StatefulWidget {

  @override
  _AdministrationScreenState createState() => _AdministrationScreenState();

}

class _AdministrationScreenState extends State<AdministrationScreen> {

  final AuthService _auth = AuthService();

  bool loading = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        extendBodyBehindAppBar: true,
        appBar: AppBar(
          elevation:0.5,
          backgroundColor: Colors.transparent,
          title: const Text(
              "Yönetici Ana Sayfa", style: TextStyle(fontSize: 22)),
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
              padding: const EdgeInsets.all(14.0),
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
                            MaterialPageRoute(
                                builder: (context) => const StopAddRemove()),
                          );
                        },
                        child: const Text("Durak"'\n' "ekle/çıkar",
                            style: TextStyle(
                                fontSize: 22, fontWeight: FontWeight.normal)),
                      ), //Container
                      const SizedBox(
                        width: 20,
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
                                builder: (context) => const StudentAddRemove()),
                          );
                        },
                        child: const Text("Öğrenci"'\n'"ekle/çıkar",
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
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => const DriverAddRemove()),
                          );
                        },
                        child: const Text("Şoför" '\n'"ekle/çıkar",
                            style: TextStyle(
                                fontSize: 22, fontWeight: FontWeight.normal)),
                      ), //SizedBox//Container
                      const SizedBox(
                        width: 20,
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
                            MaterialPageRoute(
                                builder: (context) => const PaymentConfirm()),
                          );
                        },
                        child: const Text("Ödeme onayı", style: TextStyle(
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
