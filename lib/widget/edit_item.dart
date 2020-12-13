import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class EditItem extends StatelessWidget {
  String title;
  String hintText;
  TextEditingController controller;

  EditItem({Key key, this.title, this.hintText, this.controller})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.white,
      padding: EdgeInsets.only(left: 30, right: 30),
      height: 45,
      child: Row(
        children: [
          Text(title, style: TextStyle(fontSize: 18)),
          Expanded(
            child: Container(
              alignment: Alignment.center,
              child: TextField(
                controller: controller,
                textAlign: TextAlign.right,
                textAlignVertical: TextAlignVertical.center,
                inputFormatters: <TextInputFormatter>[
                  LengthLimitingTextInputFormatter(15) //限制长度
                ],
                autofocus: false,
                decoration: InputDecoration(
                  hintText: hintText,
                  filled: true,
                  fillColor: Colors.white,
                  border: InputBorder.none,
                ),
                //controller: remarksController,
              ),
            ),
          )
        ],
      ),
    );
  }
}
