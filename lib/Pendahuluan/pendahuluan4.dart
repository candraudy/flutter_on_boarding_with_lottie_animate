import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';

class pendahuluan4 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Lottie.network(
            'https://assets9.lottiefiles.com/packages/lf20_nviqbm9p.json',
            height: 250,
            repeat: true,
            reverse: true),
        SizedBox(
          height: 20,
        ),
        Text(
          'Security Monitoring',
          style: TextStyle(fontSize: 26, fontWeight: FontWeight.bold),
        ),
        SizedBox(
          height: 20,
        ),
        Padding(
            padding: EdgeInsets.symmetric(horizontal: 20),
            child: Text(
              'Monitoring Website dari Serangan Cyber',
              textAlign: TextAlign.center,
              style: TextStyle(fontSize: 16),
            ))
      ],
    );
  }
}
