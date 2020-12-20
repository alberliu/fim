import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class RedDot extends StatelessWidget {
  int num;
  Widget child;

  RedDot({Key key, this.num = 0, this.child});

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        child,
        Positioned(
          top: 0,
          right: 0,
          child: num == 0
              ? Container()
              : ConstrainedBox(
                  constraints: BoxConstraints(minWidth: 15, minHeight: 15),
                  child: Container(
                    padding: EdgeInsets.only(left: 5, right: 5),
                    alignment: Alignment.center,
                    decoration: BoxDecoration(
                      color: Colors.red,
                      borderRadius: BorderRadius.circular(10),
                    ),
                    child: Text(
                      num.toString(),
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 10,
                      ),
                    ),
                  ),
                ),
        )
      ],
    );
  }
}
