import 'package:fim/theme/size.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class TestPage extends StatefulWidget {
  @override
  _TestPageState createState() => _TestPageState();
}

class _TestPageState extends State<TestPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        //automaticallyImplyLeading: false,
        toolbarHeight: appBarHeight,
        title: Text("测试页面"),
      ),
      body: Container(
        color: Colors.lightGreenAccent,
      ),
      bottomNavigationBar: BottomNavigationBar(
        height: 50,
        items: [
          BottomNavigationBarItem(
            Navigation(Icons.assignment_ind, "我的", Colors.green),
            Navigation(Icons.assignment_ind, "我的", Colors.black54),
          ),
          BottomNavigationBarItem(
            Navigation(Icons.assignment_ind, "我的", Colors.green),
            Navigation(Icons.assignment_ind, "我的", Colors.black54),
          ),
          BottomNavigationBarItem(
            Navigation(Icons.assignment_ind, "我的", Colors.green),
            Navigation(Icons.assignment_ind, "我的", Colors.black54),
          ),
        ],
      ),
    );
  }
}

class BottomNavigationBar extends StatefulWidget {
  List<BottomNavigationBarItem> items;
  int currentIndex;

  double height;

  void Function(int) onTap;

  BottomNavigationBar(
      {Key key,
      this.items,
      this.currentIndex = 0,
      this.height = 50,
      this.onTap})
      : super(key: key);

  @override
  _BottomNavigationBarState createState() => _BottomNavigationBarState();
}

class _BottomNavigationBarState extends State<BottomNavigationBar> {
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

class BottomNavigationBarItem {
  Widget selected;
  Widget unselected;

  BottomNavigationBarItem(this.selected, this.unselected);
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
