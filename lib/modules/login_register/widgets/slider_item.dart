import 'dart:core';

import 'package:flutter/material.dart';
import 'package:flutter_app/modules/login_register/widgets/circle_stroke.dart';
import 'package:flutter_app/modules/login_register/widgets/rounded_image_box.dart';

import 'circle.dart';

class SliderItem extends StatelessWidget {
  final Map item;

  SliderItem({this.item});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 366,
      child: Stack(
        alignment: Alignment.center,
        children: [
          Container(
            child: CustomPaint(
              painter: CircleStroke(),
            ),
          ),
          Stack(
            alignment: Alignment.center,
            children: [
              Container(
                width: 366,
                height: 366,
                child: CustomPaint(
                  painter: Circle(),
                ),
              ),
              Positioned(
                top: 0,
                bottom: 70,
                child: Container(
                  width: 226,
                  decoration: BoxDecoration(
                    image: DecorationImage(
                      image: AssetImage(this.item["asset"]),
                      fit: BoxFit.cover,
                    ),
                    color: Colors.transparent,
                    borderRadius: BorderRadius.only(
                        bottomLeft: Radius.circular(113),
                        bottomRight: Radius.circular(113)),
                  ),
                ),
              ),
            ],
          ),
          RotationTransition(
            turns: new AlwaysStoppedAnimation(-45 / 360),
            child: Container(
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  RotationTransition(
                    turns: new AlwaysStoppedAnimation(45 / 360),
                    child: RoundedImageBox(
                      height: 56.0,
                      width: 56.0,
                      asset: "assets/onboard-1-i1.png",
                    ),
                  ),
                  RotationTransition(
                    turns: new AlwaysStoppedAnimation(45 / 360),
                    child: RoundedImageBox(
                      height: 56.0,
                      width: 56.0,
                      asset: "assets/onboard-1-i3.png",
                    ),
                  ),
                ],
              ),
            ),
          ),
          RotationTransition(
            turns: new AlwaysStoppedAnimation(25 / 360),
            child: Container(
              width: 268,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  RotationTransition(
                    turns: new AlwaysStoppedAnimation(-25 / 360),
                    child: RoundedImageBox(
                      height: 42.0,
                      width: 42.0,
                      asset: "assets/onboard-1-i2.png",
                    ),
                  ),
                ],
              ),
            ),
          ),
          RotationTransition(
            turns: new AlwaysStoppedAnimation(200 / 360),
            child: Container(
              width: 264,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  RotationTransition(
                    turns: new AlwaysStoppedAnimation(-200 / 360),
                    child: RoundedImageBox(
                      height: 38.0,
                      width: 38.0,
                      asset: "assets/onboard-1-i3.png",
                    ),
                  ),
                ],
              ),
            ),
          ),
          RotationTransition(
            turns: new AlwaysStoppedAnimation(270 / 360),
            child: Container(
              width: 257,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  RotationTransition(
                    turns: new AlwaysStoppedAnimation(-270 / 360),
                    child: RoundedImageBox(
                      height: 31.0,
                      width: 31.0,
                      asset: "assets/onboard-1-i2.png",
                    ),
                  ),
                ],
              ),
            ),
          )
        ],
      ),
    );
  }
}
