import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:photo_view/photo_view.dart';

class PhotoViewPage extends StatelessWidget {
  String url;

  PhotoViewPage(this.url);

  @override
  Widget build(BuildContext context) {
    ImageProvider imageProvider;
    if (url.startsWith("/")) {
      imageProvider = AssetImage(url);
    } else {
      imageProvider = NetworkImage(url);
    }

    return Scaffold(body: PhotoView(imageProvider: imageProvider));
  }
}
