import 'package:flutter/material.dart';
import 'package:flutter_on_board/Pendahuluan/pendahuluan1.dart';
import 'package:flutter_on_board/Pendahuluan/pendahuluan2.dart';
import 'package:flutter_on_board/Pendahuluan/pendahuluan3.dart';
import 'package:flutter_on_board/Pendahuluan/pendahuluan4.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

import 'dashboardpage.dart';

class OnBoardingScreen extends StatefulWidget {
  const OnBoardingScreen({Key? key}) : super(key: key);

  @override
  _Onboardingscreen createState() => _Onboardingscreen();
}

class _Onboardingscreen extends State<OnBoardingScreen> {
  // kontrol page view standby
  PageController _controller = PageController();

  // kontrol page apakah screen di page awal atau terakhir
  bool onLastPage = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          //page view
          PageView(
            controller: _controller,
            onPageChanged: (index) {
              setState(() {
                onLastPage = (index == 3);
              });
            },
            children: [
              pendahuluan1(),
              pendahuluan2(),
              pendahuluan3(),
              pendahuluan4(),
            ],
          ),

          // dot indikator animasi
          Container(
            alignment: Alignment(0, 0.75),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                // text skip loncat ke page akhir
                GestureDetector(
                    onTap: () {
                      _controller.jumpToPage(3);
                    },
                    child: Text('Loncat')),

                //dot indikator
                SmoothPageIndicator(controller: _controller, count: 4),

                //text lanjut sampai berubah selesai
                onLastPage
                    ? GestureDetector(
                        onTap: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: (context) {
                                return DashboardPage();
                              },
                            ),
                          );
                        },
                        child: Text('Selesai'),
                      )
                    : GestureDetector(
                        onTap: () {
                          _controller.nextPage(
                            duration: Duration(milliseconds: 500),
                            curve: Curves.easeIn,
                          );
                        },
                        child: Text('Lanjut')),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
