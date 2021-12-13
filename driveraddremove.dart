import 'package:flutter/material.dart';
import 'administrationscreen.dart';
class DriverAddRemove extends StatelessWidget{
  const DriverAddRemove({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Şoför Ekle/Çıkar'),
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

