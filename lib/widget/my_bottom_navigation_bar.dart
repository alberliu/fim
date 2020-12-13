import 'package:fim/theme/color.dart';
import 'package:flutter/material.dart';

class MyBottomNavigationBar extends StatefulWidget {
  List<MyBottomNavigationBarItem> items;
  int currentIndex;

  double height;

  void Function(int) onTap;

  MyBottomNavigationBar(
      {Key key,
      this.items,
      this.currentIndex = 0,
      this.height = 50,
      this.onTap})
      : super(key: key);

  @override
  _MyBottomNavigationBarState createState() => _MyBottomNavigationBarState();
}

class _MyBottomNavigationBarState extends State<MyBottomNavigationBar> {
  @override
  Widget build(BuildContext context) {
    var list = List<Widget>();
    for (var i = 0; i < widget.items.length; i++) {
      if (i == widget.currentIndex) {
        list.add(buildItem(widget.items[i].selected, i));
      } else {
        list.add(buildItem(widget.items[i].unselected, i));
      }
    }

    return Container(
      decoration: new BoxDecoration(
        color:Colors.grey[300] ,
        //设置四周边框
        border: Border(
          top: BorderSide(
            width: 1, //宽度
            color: Colors.grey[400], //边框颜色
          ),
        ),
      ),
      height: widget.height,
      child: Row(
        children: list,
      ),
    );
  }

  Widget buildItem(Widget item, int index) {
    return Expanded(
      flex: 1,
      child: Container(
        alignment: Alignment.bottomCenter,
        child: GestureDetector(
          behavior: HitTestBehavior.opaque,
          child: item,
          onTap: () {
            setState(() {
              widget.currentIndex = index;
            });
            if (widget.onTap != null) {
              widget.onTap(index);
            }
          },
        ),
      ),
    );
  }
}

class MyBottomNavigationBarItem {
  Widget selected;
  Widget unselected;

  MyBottomNavigationBarItem(this.selected, this.unselected);
}

class Navigation extends StatelessWidget {
  IconData icon;
  String text;
  Color color;

  Navigation(this.icon, this.text, this.color);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 50,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Icon(
            icon,
            size: 30,
            color: color,
          ),
          Text(
            text,
            style: TextStyle(
              color: color,
              fontSize: 11.0,
              height: 1,
            ),
            strutStyle: StrutStyle(
              forceStrutHeight: true,
              fontSize: 11,
              height: 1,
              leading: 0.5,
            ),
          ),
        ],
      ),
    );
  }
}
