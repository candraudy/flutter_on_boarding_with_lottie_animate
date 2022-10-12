import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';

class pendahuluan2 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Lottie.network(
            'https://assets5.lottiefiles.com/packages/lf20_ksrcyxgn.json',
            height: 250,
            repeat: true,
            reverse: true),
        SizedBox(
          height: 20,
        ),
        Text(
          'Monitoring',
          style: TextStyle(fontSize: 26, fontWeight: FontWeight.bold),
        ),
        SizedBox(
          height: 20,
        ),
        Padding(
            padding: EdgeInsets.symmetric(horizontal: 20),
            child: Text(
              'Monitoring Website Anda',
              textAlign: TextAlign.center,
              style: TextStyle(fontSize: 16),
            ))
      ],
    );
  }
}
