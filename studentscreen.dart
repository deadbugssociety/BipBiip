import 'package:flutter/material.dart';
import 'settingspage.dart';

class StudentScreen extends StatelessWidget {
  const StudentScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text(
              "Öğrenci Ana Sayfa", style: TextStyle(fontSize: 22)),
          leading: IconButton(
            onPressed: () {
              Navigator.pop(context);
            },
            icon: const Icon(
              Icons.arrow_back,
              color: Colors.white,
            ),
          ),
        ),
        body: Center(
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
                              builder: (context) => const SettingPageUI()),
                        );
                      },
                      child: const Text("Duraklar",
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
                              builder: (context) => const SettingPageUI()),
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
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => const SettingPageUI()),
                        );
                      },
                      child: const Text("Servis Takip",
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
                              builder: (context) => const SettingPageUI()),
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
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => const SettingPageUI()),
                        );
                      },
                      child: const Text("Duraklar",
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
        ) //Center


    );
  }
}