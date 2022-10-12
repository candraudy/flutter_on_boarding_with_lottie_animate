import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';

class pendahuluan3 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Lottie.network(
            'https://assets9.lottiefiles.com/packages/lf20_vfohuwh6.json',
            height: 250,
            repeat: true,
            reverse: true),
        SizedBox(
          height: 20,
        ),
        Text(
          'Manajemen',
          style: TextStyle(fontSize: 26, fontWeight: FontWeight.bold),
        ),
        SizedBox(
          height: 20,
        ),
        Padding(
            padding: EdgeInsets.symmetric(horizontal: 20),
            child: Text(
              'Managemen Dokumentasi Data Anda',
              textAlign: TextAlign.center,
              style: TextStyle(fontSize: 16),
            ))
      ],
    );
  }
}
