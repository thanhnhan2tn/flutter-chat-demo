import 'package:flutter/material.dart';
import 'package:flutter_app/config/palette.dart';

class RoundedImageBox extends StatelessWidget {
  final String asset;
  final double width;
  final double height;

  RoundedImageBox({
    @required this.asset,
    this.width: double.infinity,
    this.height: double.infinity,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      height: this.height,
      width: this.width,
      decoration: BoxDecoration(
          image: DecorationImage(
            image: AssetImage(this.asset),
            fit: BoxFit.cover,
          ),
          color: Palette.primaryBackgroundColor,
          borderRadius: BorderRadius.circular(15),
          boxShadow: [
            BoxShadow(
              color: Colors.grey.withOpacity(0.5),
              offset: Offset(5, 5),
              blurRadius: 20,
              spreadRadius: 2,
            ),
          ]),
    );
  }
}
