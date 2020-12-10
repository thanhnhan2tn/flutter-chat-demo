import 'package:flutter/material.dart';
import 'package:flutter_app/config/Assets.dart';
import 'package:flutter_app/config/Palette.dart';

class ChatAppBar extends StatelessWidget implements PreferredSizeWidget {
  final double height = 100;
  const ChatAppBar();
  @override
  Widget build(BuildContext context) {
    return Material(
      child: Container(
        decoration: new BoxDecoration(boxShadow: [
          new BoxShadow(color: Colors.black, blurRadius: 5.0)
        ]),
        child: Container(
          color: Palette.primaryBackgroundColor,
          child: Row(
            children: <Widget>[
              Expanded(
                flex: 7, child: Center(
                child: Column(
                  mainAxisSize: MainAxisSize.min,
                  children: <Widget>[
                    Expanded(
                        flex: 7,
                        child: Container(
                          height: 70 - (MediaQuery.of(context).size.width * .06),
                          child: Row(children: [
                            Expanded(flex: 2, child: Center(child: Icon(
                              Icons.attach_file,
                              color: Palette.secondaryColor,
                            ),)),
                            Expanded(flex: 6,child: Container(
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                mainAxisSize: MainAxisSize.min,
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  Text('Nhan Thai', style: TextStyle(color: Palette.primaryTextColor, fontSize: 20)),
                                  Text('@thanhnhan2tn', style: TextStyle(color: Palette.secondaryTextColor))
                                ],
                              ),
                            ))
                          ],
                    ))),
                    Expanded(flex: 3, child: Container(
                      padding: EdgeInsets.fromLTRB(20, 5, 5, 0),
                      child: Row(
                        children: [
                          Text('Photos', style: TextStyle(color: Palette.primaryTextColor)),
                          VerticalDivider(width: 30, color: Palette.primaryTextColor,),
                          Text('Videos',  style: TextStyle(color: Palette.primaryTextColor)),
                          VerticalDivider(width: 30, color: Palette.primaryTextColor,),
                          Text('Files',  style: TextStyle(color: Palette.primaryTextColor)),
                        ],
                      ),
                    ))
                    // 2nd row for buttons

                  ],
                ),
              )),
              Expanded(flex: 3, child: Container(
                child: Center(
                  child: CircleAvatar(
                    radius: ((80 - (MediaQuery.of(context).size.width * .06)) / 2),
                    backgroundImage: AssetImage(Assets.user),
                  ),
                ),
              ))
            ],
          ),
        ),
      ),
    );
  }

  @override
  Size get preferredSize => Size.fromHeight(height);
}
