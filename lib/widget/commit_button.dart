import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class CommitButton extends StatelessWidget {
  String text;
  VoidCallback onPressed;

  CommitButton({Key key, this.text, this.onPressed}) :super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.only(left: 20, right: 20),
      height: 40,
      child: FlatButton(
          shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(5.0)),
          minWidth: 10000,
          color: Colors.green,
          child: Text(text),
          onPressed: onPressed,
      ),
    );
  }
}
