import 'package:flutter/material.dart';
import 'administrationscreen.dart';
class PaymentConfirm extends StatelessWidget {
  const PaymentConfirm({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Ödeme Onayı'),
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
    );
  }
}