import 'package:flutter/material.dart';

// Navigator.of(context).pop() 取消加载对话框
void showLoadingDialog(BuildContext context, String text) {
  showDialog(
    context: context,
    barrierDismissible: false, //点击遮罩不关闭对话框
    builder: (context) {
      return UnconstrainedBox(
        constrainedAxis: Axis.vertical,
        child: SizedBox(
          width: 280,
          child: AlertDialog(
            content: Column(
              mainAxisSize: MainAxisSize.min,
              children: <Widget>[
                CircularProgressIndicator(),
                Padding(
                  padding: const EdgeInsets.only(top: 26.0),
                  child: Text(text),
                )
              ],
            ),
          ),
        ),
      );
    },
  );
}
