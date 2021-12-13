import 'package:flutter/material.dart';
import 'administrationscreen.dart' ;

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  // Using "static" so that we can easily access it later
  static final ValueNotifier<ThemeMode> themeNotifier = ValueNotifier(ThemeMode.light);

  const MyApp({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return ValueListenableBuilder<ThemeMode>(
        valueListenable: themeNotifier,
        builder: (_, ThemeMode currentMode, __) {
          return MaterialApp(
            // Remove the debug banner
            debugShowCheckedModeBanner: false,
            title: 'Yönetici Ana Sayfa',
            theme: ThemeData(primarySwatch: Colors.blueGrey),
            darkTheme: ThemeData.dark(),
            themeMode: currentMode,
            home:  const AdministrationScreen(),
          );
        });
  }
}
