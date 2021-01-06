import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:flutter_app/config/palette.dart';
import 'package:flutter_app/modules/login_register/widgets/button_with_image.dart';
import 'package:flutter_app/widgets/paragraph_text.dart';

class LoginScreen extends StatelessWidget {
  LoginScreen({
    Key key,
    this.title = 'Login',
  }) : super(key: key);

  final String title;

  _onLogin(context) {
    Navigator.pushNamed(context, '/on_board');
  }

  @override
  Widget build(BuildContext ctx) {
    return SafeArea(
      child: new Scaffold(
        body: Stack(
          children: [
            ShaderMask(
              shaderCallback: (rect) {
                return LinearGradient(
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
                    ParagraphText(text: "Your favourite foods delivered fast at your door."),
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
                              ButtonWithImage(
                                asset: "assets/facebook-icon.png",
                                label: "Facebook",
                                onPressed: () => null,
                              ),
                              ButtonWithImage(
                                asset: "assets/google-icon.png",
                                label: "Google",
                                onPressed: () => null,
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
                                onTap: () => this._onLogin(ctx),
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
