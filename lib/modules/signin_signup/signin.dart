import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:flutter_app/config/palette.dart';

// import 'package:flutter_app/config/foodude_icons.dart';
import 'package:flutter_app/config/styles.dart';

class SignIn extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: ConstrainedBox(
          constraints: BoxConstraints(
            maxHeight: MediaQuery.of(context).size.height,
          ),
          child: Padding(
            padding: const EdgeInsets.all(24.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Container(
                  width: 24,
                  child: IconButton(
                    icon: Icon(
                      Icons.arrow_back_ios,
                    ),
                    onPressed: () => {},
                    padding: EdgeInsets.all(0),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(top: 50, bottom: 8.0),
                  child: Text(
                    'Sign In',
                    style: Styles.largeTitle,
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(top: 8.0, bottom: 24.0),
                  child: RichText(
                    text: TextSpan(
                      children: [
                        TextSpan(
                          text: 'Don\'t have an account? ',
                          style: Styles.body2,
                        ),
                        TextSpan(
                            text: 'Sign up now!',
                            style: TextStyle(
                              color: Palette.brandColor,
                              height: 1.5,
                            ),
                            recognizer: TapGestureRecognizer()
                              ..onTap = () => {
                                    Navigator.pushNamed(context, '/signup'),
                                  })
                      ],
                    ),
                  ),
                ),
                Form(
                  child: Column(
                    children: [
                      Padding(
                        padding: const EdgeInsets.symmetric(vertical: 8.0),
                        child: TextFormField(
                          validator: (value) {
                            if (value.isEmpty) {
                              return 'Please enter text';
                            }
                            return null;
                          },
                          decoration: InputDecoration(
                            contentPadding: EdgeInsets.symmetric(
                                vertical: 2, horizontal: 15),
                            labelText: 'Email or Phone Number',
                            labelStyle: TextStyle(
                              color: Color(0xff9B9B9B),
                            ),
                            border: OutlineInputBorder(
                              borderRadius:
                                  BorderRadius.all(Radius.circular(5)),
                              borderSide: BorderSide(color: Colors.grey),
                            ),
                          ),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.symmetric(vertical: 8.0),
                        child: TextFormField(
                          obscureText: true,
                          validator: (value) {
                            if (value.isEmpty) {
                              return 'Please enter password';
                            }
                            return null;
                          },
                          decoration: InputDecoration(
                            contentPadding: EdgeInsets.symmetric(
                                vertical: 2, horizontal: 15),
                            labelText: 'Password',
                            labelStyle: TextStyle(
                              color: Color(0xff9B9B9B),
                            ),
                            border: OutlineInputBorder(
                              borderRadius:
                                  BorderRadius.all(Radius.circular(5)),
                              borderSide: BorderSide(color: Colors.grey),
                            ),
                          ),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.symmetric(vertical: 8.0),
                        child: FlatButton(
                          onPressed: () => {},
                          child: Text('Forgot Password?'),
                        ),
                      ),
                      Padding(
                        padding:
                            const EdgeInsets.only(top: 16.0, bottom: 8.0),
                        child: Row(
                          children: [
                            Expanded(
                              child: Container(
                                decoration: BoxDecoration(
                                  color: Palette.brandColor,
                                  borderRadius: BorderRadius.all(
                                    Radius.circular(5.0),
                                  ),
                                ),
                                child: FlatButton(
                                  child: Text(
                                    'Sign In'.toUpperCase(),
                                    style: Styles.btnText,
                                  ),
                                  onPressed: () => {},
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.symmetric(vertical: 16.0),
                        child: Text(
                          'OR',
                          style: Styles.body2,
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.symmetric(vertical: 8.0),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.start,
                          children: [
                            Expanded(
                              child: Container(
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.all(
                                    Radius.circular(5.0),
                                  ),
                                  color: Color(0xff4460A0),
                                ),
                                width: double.infinity,
                                child: FlatButton(
                                  onPressed: () => {},
                                  child: Row(
                                    // mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                    children: [
                                      Align(
                                        alignment: Alignment.centerLeft,
                                        child: Container(
                                          padding: EdgeInsets.all(5),
                                          decoration: BoxDecoration(
                                            color: Colors.white,
                                            borderRadius: BorderRadius.all(
                                              Radius.circular(3.0),
                                            ),
                                          ),
                                          child: Image.asset(
                                            'assets/images/facebook-icon.png',
                                            width: 20,
                                            height: 20,
                                          ),
                                        ),
                                      ),
                                      Expanded(
                                        child: Align(
                                          alignment: Alignment.center,
                                          child: Text(
                                            'Continue with Facebook'
                                                .toUpperCase(),
                                            style: Styles.btnText,
                                          ),
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.symmetric(vertical: 8.0),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.start,
                          children: [
                            Expanded(
                              child: Container(
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.all(
                                    Radius.circular(5.0),
                                  ),
                                  color: Color(0xff4285F4),
                                ),
                                child: FlatButton(
                                  onPressed: () => {},
                                  child: Row(
                                    // mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                    children: [
                                      Align(
                                        alignment: Alignment.centerLeft,
                                        child: Container(
                                          padding: EdgeInsets.all(5),
                                          decoration: BoxDecoration(
                                            color: Colors.white,
                                            borderRadius: BorderRadius.all(
                                              Radius.circular(3.0),
                                            ),
                                          ),
                                          child: Image.asset(
                                            'assets/images/google-icon.png',
                                            width: 20,
                                            height: 20,
                                          ),
                                        ),
                                      ),
                                      Expanded(
                                        child: Align(
                                          alignment: Alignment.center,
                                          child: Text(
                                            'Continue with Google'
                                                .toUpperCase(),
                                            style: Styles.btnText,
                                          ),
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
