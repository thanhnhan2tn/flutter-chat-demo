import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:flutter_app/config/palette.dart';
import 'package:flutter_app/modules/login_register/widgets/button_with_icon.dart';
import 'package:flutter_app/modules/login_register/widgets/slider_item.dart';
import 'package:flutter_app/widgets/paragraph_text.dart';
import 'package:flutter_app/widgets/title_text.dart';

class OnBoarding extends StatefulWidget {
  @override
  _OnBoardingState createState() => _OnBoardingState();
}

class _OnBoardingState extends State<OnBoarding> {
  int _current = 0;
  var onBoardScreens = [
    {
      "asset": "assets/onboard-1.png",
      "headingText": "Browse your menu and order directly",
      "subText": "Our app can send you everywhere, even space. For only \$2.99 per month",
    },{ 
      "asset": "assets/onboard-2.png",
      "headingText": "Even to space with us! Together",
      "subText": "Our app can send you everywhere, even space. For only \$2.99 per month",
    },{
      "asset": "assets/onboard-3.png",
      "headingText": "Pickup delivery at your door",
      "subText": "Our app can send you everywhere, even space. For only \$2.99 per month",
    },
  ];
  CarouselController buttonCarouselController = CarouselController();

  _nextOnboarding() {
    return buttonCarouselController.nextPage(
        duration: Duration(milliseconds: 300), curve: Curves.linear);
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: new Scaffold(
        body: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: <Widget>[
            CarouselSlider(
              carouselController: buttonCarouselController,
              options: CarouselOptions(
                height: 400,
                enableInfiniteScroll: false,
                enlargeCenterPage: true,
                initialPage: _current,
                onPageChanged: (index, reason) {
                  setState(() {
                    _current = index;
                  });
                },
              ),
              items: onBoardScreens.map((i) {
                return Builder(
                  builder: (_) {
                    return Container(
                      margin: EdgeInsets.fromLTRB(10, 50, 10, 30),
                      child: FittedBox(
                        fit: BoxFit.fitWidth,
                        child: SliderItem(
                          item: i,
                        ),
                      ),
                    );
                  },
                );
              }).toList(),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: onBoardScreens.map((i) {
                int index = onBoardScreens.indexOf(i);
                return Container(
                  width: _current == index ? 25.0 : 5.0,
                  height: 5.0,
                  margin: EdgeInsets.symmetric(vertical: 10.0, horizontal: 2.0),
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(5.0),
                    color: _current == index
                        ? Palette.accentColor
                        : Palette.accentColor.withOpacity(0.4),
                  ),
                );
              }).toList(),
            ),
            Expanded(
              child: Padding(
                padding: EdgeInsets.symmetric(horizontal: 20),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    Center(
                      child: TitleText(
                          text: onBoardScreens[_current]["headingText"],
                          textAlign: TextAlign.center),
                    ),
                    ParagraphText(
                      text: onBoardScreens[_current]["subText"],
                      textAlign: TextAlign.center,
                    ),
                    ButtonWithIcon(
                      icon: Icon(
                        Icons.arrow_right_alt_outlined,
                        color: Colors.white,
                        size: 24.0,
                      ),
                      onPressed: this._nextOnboarding,
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
