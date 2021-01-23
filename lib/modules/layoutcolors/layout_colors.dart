import 'package:flutter/material.dart';

class LayoutGridColors extends StatelessWidget {
  Widget _buildSquare(Color color) {
    return AspectRatio(
      aspectRatio: 1.0,
      child: Container(
        color: color,
        // decoration: BoxDecoration(
        // ),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Stack(
        fit: StackFit.expand,
        alignment: AlignmentDirectional.center,
        children: [
          Row(
            // mainAxisAlignment: MainAxisAlignment.,
            children: <Widget>[
              Expanded(
                // flex: 1,
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    // Expanded(
                    // color: Colors.lightBlueAccent,
                    // child:
                    Container(
                      child: Row(
                        children: [
                          Expanded(
                            flex: 1,
                            child: Column(
                              children: [
                                _buildSquare(Colors.blueGrey),
                                _buildSquare(Colors.orange),
                                _buildSquare(Colors.blueAccent),
                                _buildSquare(Colors.pink),
                                // Expanded(
                                //   child: Container(
                                //     color: Colors.blueGrey,
                                //   ),
                                // ),
                                // Expanded(
                                //   child: Container(
                                //     color: Colors.orange,
                                //   ),
                                // ),
                                // Expanded(
                                //   child: Container(
                                //     color: Colors.blueAccent,
                                //   ),
                                // ),
                                // Expanded(
                                //   child: Container(
                                //     color: Colors.pink,
                                //   ),
                                // ),
                              ],
                            ),
                          ),
                          Expanded(
                            flex: 2,
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.start,
                              children: [
                                AspectRatio(
                                  aspectRatio: 2 / 3,
                                  child: Container(
                                    color: Colors.lightBlueAccent,
                                  ),
                                ),

                                AspectRatio(
                                  aspectRatio: 2/1,
                                  child: Row(
                                    children: [
                                      Expanded(
                                        child: Container(
                                          color: Colors.green,
                                        ),
                                      ),
                                      Expanded(
                                        child: Container(
                                          color: Colors.yellow,
                                        ),
                                      ),
                                    ],
                                  )
                                ),

                                // Expanded(
                                //   child: Container(
                                //     // width: 100,
                                //     // height: 100,
                                //     color: Colors.lightBlueAccent,
                                //   ),
                                // ),
                                // Expanded(
                                //   // flex: 3,
                                //   child: Container(
                                //     color: Colors.lightBlueAccent,
                                //   ),
                                // ),
                                // Expanded(
                                //   child: Row(
                                //     children: [
                                //       Expanded(
                                //         child: Container(
                                //           color: Colors.green,
                                //         ),
                                //       ),
                                //       Expanded(
                                //         child: Container(
                                //           color: Colors.yellow,
                                //         ),
                                //       ),
                                //     ],
                                //   ),
                                // ),
                              ],
                            ),
                          ),
                        ],
                      ),
                    ),
                    // ),
                    Expanded(
                      child: Column(
                        children: [
                          Expanded(
                            flex: 1,
                            child: Container(
                              color: Colors.black,
                            ),
                          ),
                          Expanded(
                            flex: 1,
                            child: Container(
                              color: Colors.yellow,
                            ),
                          ),
                          Expanded(
                            flex: 1,
                            child: Container(
                              color: Colors.white,
                            ),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
              Expanded(
                flex: 2,
                child: Container(
                  color: Colors.pinkAccent,
                ),
              ),
              Container(
                width: 10,
              ),
              Expanded(
                child: Container(
                  color: Colors.pinkAccent,
                ),
              ),
            ],
          ),
          Positioned(
            bottom: 180,
            left: 50,
            child: SizedBox(
              width: 100,
              height: 100,
              child: Container(
                color: Colors.lightGreen.withOpacity(0.7),
              ),
            ),
          )
        ],
      ),
    );
  }
}
