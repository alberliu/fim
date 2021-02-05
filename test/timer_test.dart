import 'dart:async';

import 'dart:io';

void main()async{
  var timer = Timer.periodic(Duration(seconds: 1), (timer) {
    print("object");
  });

  Future.delayed(Duration(seconds: 5), () {
    timer.cancel();
  });
}