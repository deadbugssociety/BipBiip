import 'package:flutter/material.dart';
import 'main.dart';
class SettingPageUI extends StatelessWidget {
  const SettingPageUI({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Ayarlar", style: TextStyle(fontSize: 22, fontWeight: FontWeight.normal)),
        leading: IconButton(
          onPressed: (){
            Navigator.pop(context);

          },
          icon: const Icon(
            Icons.arrow_back,
            color: Colors.white,
          ),
        ),
      ),
      body:Container(
        padding: const EdgeInsets.all(10.0),
        child: ListView(
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: const [
                Icon(
                  Icons.settings,
                  color: Colors.grey,
                  size: 200.0,
                ),

              ],
            ),
            const Divider(height: 100),
            const SizedBox(height: 10),
            Row(
              children: const <Widget> [
                Icon(
                  Icons.arrow_forward,
                  color: Colors.grey,
                  size: 30.0,
                ),
                Divider(height: 100, thickness: 30),
                SizedBox(width: 30),
                Text("Dil Seçeneği", style: TextStyle(fontSize: 22, fontWeight: FontWeight.normal)),
              ],
            ),
            Row(
              children: <Widget> [
                const Icon(
                  Icons.arrow_forward,
                  color: Colors.grey,
                  size: 30.0,
                ),
                const Divider(height: 100, thickness: 30),
                const SizedBox(width: 30),
                const Text("Gece Modu", style: TextStyle(fontSize: 22, fontWeight: FontWeight.normal)),

                IconButton(
                    icon: Icon(MyApp.themeNotifier.value == ThemeMode.light
                        ? Icons.dark_mode
                        : Icons.light_mode),
                    onPressed: () {
                      MyApp.themeNotifier.value =
                      MyApp.themeNotifier.value == ThemeMode.light
                          ? ThemeMode.dark
                          : ThemeMode.light;
                    })
              ],
            ),
          ],
        ),
      ),
    );
  }
}

class LanguageSelection extends StatelessWidget{
  const LanguageSelection({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Dil Seçeneği'),
        leading: IconButton(
          onPressed: (){
            Navigator.pop(context);
          },
          icon: const Icon(
            Icons.arrow_back,
            color: Colors.white,
          ),
        ),

      ),
    );
  }
}






