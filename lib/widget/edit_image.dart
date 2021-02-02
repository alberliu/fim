import 'dart:io';
import 'package:cached_network_image/cached_network_image.dart';
import 'package:fim/util/logger.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:image_cropper/image_cropper.dart';
import 'package:image_picker/image_picker.dart';

class EditImage extends StatefulWidget {
  String title;
  Widget image = Image.asset("assets/add.png");
  void Function(File) onPicked;

  final _picker = ImagePicker();

  EditImage({Key key, this.title, String url, this.onPicked})
      : super(key: key) {
    if (url != null && url != "") {
      image = CachedNetworkImage(imageUrl: url);
    }
  }

  @override
  _EditImageState createState() => _EditImageState();
}

class _EditImageState extends State<EditImage> {
  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.white,
      padding: EdgeInsets.only(left: 30, right: 30),
      height: 70,
      child: Row(
        children: [
          Text(widget.title, style: TextStyle(fontSize: 18)),
          Expanded(
            child: Container(
              padding: EdgeInsets.only(top: 10, bottom: 10),
              alignment: Alignment.centerRight,
              child: GestureDetector(
                child: ClipRRect(
                  borderRadius: BorderRadius.circular(10),
                  child: widget.image,
                ),
                onTap: () {
                  logger.i("我想替换图片");
                  _getImage();
                },
              ),
            ),
          )
        ],
      ),
    );
  }

  Future _getImage() async {
    final pickedFile =
        await widget._picker.getImage(source: ImageSource.gallery);
    if (pickedFile != null) {
      var file = await _cropImage(pickedFile.path);
      if (file != null) {
        setState(() {
          widget.image = Image.file(file);
        });
        widget.onPicked(file);
      }
    } else {
      logger.i('No image selected.');
    }
  }

  Future<File> _cropImage(String path) async {
    File croppedFile = await ImageCropper.cropImage(
        sourcePath: path,
        maxWidth: 200,
        maxHeight: 200,
        aspectRatio: CropAspectRatio(ratioX: 1, ratioY: 1),
        aspectRatioPresets: Platform.isAndroid
            ? [
                CropAspectRatioPreset.square,
                CropAspectRatioPreset.ratio3x2,
                CropAspectRatioPreset.original,
                CropAspectRatioPreset.ratio4x3,
                CropAspectRatioPreset.ratio16x9
              ]
            : [
                CropAspectRatioPreset.original,
                CropAspectRatioPreset.square,
                CropAspectRatioPreset.ratio3x2,
                CropAspectRatioPreset.ratio4x3,
                CropAspectRatioPreset.ratio5x3,
                CropAspectRatioPreset.ratio5x4,
                CropAspectRatioPreset.ratio7x5,
                CropAspectRatioPreset.ratio16x9
              ],
        androidUiSettings: AndroidUiSettings(
            toolbarTitle: '裁剪头像',
            toolbarColor: Colors.green,
            toolbarWidgetColor: Colors.white,
            initAspectRatio: CropAspectRatioPreset.original,
            lockAspectRatio: true),
        iosUiSettings: IOSUiSettings(
          title: 'Cropper',
        ));
    if (croppedFile != null) {
      return croppedFile;
    }
    return null;
  }
}
