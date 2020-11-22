import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class LoadingPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      //color: Color(0xFFD6D6D6),
      alignment: Alignment.center,
      child: Container(
        width: 200,
        height: 100,
        child: Text("正在加载...",textAlign: TextAlign.center,),
      ),
    );
  }
}
