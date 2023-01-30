import 'package:flutter/material.dart';
import 'NedxtPage.dart';
import 'package:carousel_pro/carousel_pro.dart';
import 'package:animated_text_kit/animated_text_kit.dart';



class HomePage extends StatelessWidget {
  const HomePage({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Stack(children: <Widget>[
          new Container(
            decoration: new BoxDecoration(
              image: new DecorationImage(
                image: new AssetImage("image/background.webp"),
                fit: BoxFit.cover,
              ),
            ),
          ),
          ListView(
            padding: EdgeInsets.only(left: 20, right: 20, top: 100),
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  DefaultTextStyle(
                    style: const TextStyle(
                        fontSize: 40,
                        color: Colors.black54,
                        fontWeight: FontWeight.w800),
                    child: AnimatedTextKit(
                      animatedTexts: [
                        WavyAnimatedText('Welcome',
                            speed: const Duration(milliseconds: 700)),
                      ],
                      totalRepeatCount: 100,
                      pause: const Duration(milliseconds: 9000),
                      isRepeatingAnimation: true,
                      onTap: () {
                        // print("Tap Event");
                      },
                    ),
                  )
                ],
              ),
              Center(
                child: SizedBox(
                  height: 300.0,
                  width: 500.0,
                  child: Carousel(
                    boxFit: BoxFit.cover,
                    autoplay: false,
                    animationCurve: Curves.fastOutSlowIn,
                    animationDuration: Duration(milliseconds: 1000),
                    dotSize: 5,
                    dotIncreasedColor: Colors.white,
                    dotBgColor: Colors.transparent,
                    dotPosition: DotPosition.bottomRight,
                    dotVerticalPadding: 5.0,
                    showIndicator: true,
                    indicatorBgPadding: 7,
                    images: [
                      Image.asset("image/gym.jpg"),
                      Image.asset("image/back.jpg"),
                      Image.asset("image/bye.jpg"),
                      Image.asset("image/sixbacks.jpg"),
                    ],
                  ),
                ),
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  AnimatedTextKit(
                    animatedTexts: [
                      TypewriterAnimatedText(
                        'Never give up',
                        textStyle: const TextStyle(
                            fontSize: 32.0,
                            fontWeight: FontWeight.w800,
                            color: Colors.white),
                        speed: const Duration(milliseconds: 400),
                      ),
                    ],
                    totalRepeatCount: 100,
                    pause: const Duration(milliseconds: 1000),
                    displayFullTextOnTap: true,
                    stopPauseOnTap: true,
                  )
                ],
              ),
              SizedBox(
                height: 100,
              ),
              Row(
                children: [
                  Expanded(
                      child: Text(
                        'LOSE WEIGHT BUILD MUSCLE',
                        style: TextStyle(
                            fontSize: 35,
                            color: Colors.white,
                            fontWeight: FontWeight.w900),
                        maxLines: 5,
                      ))
                ],
              ),
              SizedBox(
                height: 40,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  TextButton(
                    style: TextButton.styleFrom(
                      textStyle: const TextStyle(fontSize: 30),
                    ),
                    onPressed: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) => const First()),
                      );
                    },
                    child: const Text(
                      'Lets start',
                      style: TextStyle(
                          color: Colors.yellow, fontWeight: FontWeight.w600),
                    ),
                  )
                ],
              ),
            ],
          )
        ]));
  }
}
