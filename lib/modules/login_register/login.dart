import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:flutter_app/config/palette.dart';

class LoginScreen extends StatelessWidget {
  LoginScreen({
    Key key,
    this.title = 'Home',
  }) : super(key: key);

  final String title;

  @override
  Widget build(BuildContext ctx) {
    return SafeArea(
      child: new Scaffold(
        body: Stack(
          children: [
            ShaderMask(
              shaderCallback: (rect) {
                return LinearGradient(
                  // begin: Alignment(-0.1, -0.15),
                  end: Alignment(1.5, 1.5),
                  stops: [0, 1],
                  colors: [
                    Colors.transparent,
                    const Color(0xff191B2f),
                  ],
                  tileMode: TileMode.clamp,
                ).createShader(rect);
              },
              blendMode: BlendMode.srcOver,
              child: Container(
                width: double.infinity,
                decoration: new BoxDecoration(
                  image: DecorationImage(
                    image: AssetImage('assets/brooke-lark-1.png'),
                    fit: BoxFit.cover,
                  ),
                ),
              ),
            ),
            SingleChildScrollView(
              child: Padding(
                padding: const EdgeInsets.all(28.0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  // mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  mainAxisSize: MainAxisSize.max,
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.end,
                      children: [
                        Container(
                          width: 55,
                          child: RaisedButton(
                            onPressed: () => null,
                            color: Colors.white,
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(30),
                            ),
                            child: FittedBox(
                              child: Text(
                                "Skip",
                                style: TextStyle(
                                  color: Palette.primaryColor,
                                ),
                              ),
                            ),
                          ),
                        ),
                      ],
                    ),
                    SizedBox(
                      height: 100.0,
                    ),
                    Container(
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            "Welcome to",
                            style: TextStyle(
                              color: Palette.secondaryColor,
                              fontSize: 45,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                          Text(
                            "FoodHub",
                            style: TextStyle(
                              color: Palette.accentColor,
                              fontSize: 45,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                        ],
                      ),
                    ),
                    Text(
                      "Your favourite foods delivered fast at your door.",
                      style: TextStyle(
                        fontSize: 18,
                      ),
                    ),
                    SizedBox(
                      height: 120,
                    ),
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 22),
                      child: Column(
                        children: [
                          Container(
                            padding: EdgeInsets.symmetric(vertical: 28),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Container(
                                  width: 80,
                                  child: Divider(
                                    height: 3.0,
                                    color: Colors.white,
                                  ),
                                ),
                                Text(
                                  "sign in with",
                                  style: TextStyle(
                                    color: Colors.white,
                                    fontSize: 13,
                                  ),
                                ),
                                Container(
                                  width: 80,
                                  child: Divider(
                                    height: 3.0,
                                    color: Colors.white,
                                  ),
                                ),
                              ],
                            ),
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Container(
                                width: 140,
                                child: RaisedButton.icon(
                                  color: Colors.white,
                                  padding: EdgeInsets.all(10),
                                  onPressed: () => null,
                                  icon: Image.asset(
                                    "assets/facebook-icon.png",
                                    width: 29,
                                    height: 29,
                                  ),
                                  label: Text(
                                    "Facebook".toUpperCase(),
                                    style: TextStyle(
                                      fontSize: 12,
                                      fontWeight: FontWeight.w600,
                                    ),
                                    textAlign: TextAlign.center,
                                  ),
                                  shape: RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(30),
                                  ),
                                ),
                              ),
                              Container(
                                width: 140,
                                child: RaisedButton.icon(
                                  color: Colors.white,
                                  padding: EdgeInsets.all(10),
                                  onPressed: () => null,
                                  icon: Image.asset(
                                    "assets/google-icon.png",
                                    width: 29,
                                    height: 29,
                                  ),
                                  label: Text(
                                    "Google".toUpperCase(),
                                    style: TextStyle(
                                      fontSize: 12,
                                      fontWeight: FontWeight.w600,
                                    ),
                                    textAlign: TextAlign.center,
                                  ),
                                  shape: RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(30),
                                  ),
                                ),
                              ),
                            ],
                          ),
                          Container(
                            margin: EdgeInsets.symmetric(vertical: 30),
                            height: 54.0,
                            child: TextField(
                              textAlign: TextAlign.center,
                              decoration: InputDecoration(
                                focusedBorder: OutlineInputBorder(
                                  borderSide: const BorderSide(
                                      color: Colors.white, width: 1),
                                  borderRadius: BorderRadius.circular(80.0),
                                ),
                                enabledBorder: OutlineInputBorder(
                                  borderSide: const BorderSide(
                                      color: Colors.white, width: 1),
                                  borderRadius: BorderRadius.circular(80.0),
                                ),
                                hintText: 'Start with email or phone',
                                hintStyle: TextStyle(
                                  color: Colors.white,
                                  fontSize: 17,
                                ),
                                fillColor: Colors.white.withOpacity(.3),
                                filled: true,
                              ),
                              style: TextStyle(
                                fontSize: 17.0,
                                height: 2.0,
                                color: Colors.white,
                              ),
                            ),
                          ),
                          Row(
                            children: [
                              Text("Already have an account?",
                                  style: TextStyle(color: Colors.white)),
                              SizedBox(width: 5),
                              new InkWell(
                                child: Text(
                                  "Sign In",
                                  style: TextStyle(
                                    decoration: TextDecoration.underline,
                                    color: Colors.white,
                                  ),
                                ),
                                onTap: null,
                              ),
                            ],
                          ),
                        ],
                      ),
                    )
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
