import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';

class OnBoarding extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: new Scaffold(
        body: Column(
          children: <Widget>[
            CarouselSlider.builder(
              itemCount: 15,
              itemBuilder: (BuildContext context, int itemIndex) =>
                Container(
                  child: Text(itemIndex.toString()),
                ),
            )
          ],
        ),
      ),
    );
  }
}
