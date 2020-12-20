import 'package:fim/widget/red_dot.dart';
import 'package:flutter/cupertino.dart';

class ListItem extends StatelessWidget {
  Widget icon;
  String name;
  int num;
  void Function() onTab;

  ListItem({Key key, this.icon, this.name, this.num = 0, this.onTab})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      behavior: HitTestBehavior.opaque,
      child: Container(
        height: 45.0,
        child: Row(
          children: <Widget>[
            Container(
                margin: EdgeInsets.only(left: 10, right: 10),
                height: 45,
                width: 45,
                child: RedDot(
                  num: num,
                  child: Container(
                    padding: EdgeInsets.all(3),
                    child: ClipRRect(
                      borderRadius: BorderRadius.circular(5),
                      child: icon,
                    ),
                  ),
                )),
            Expanded(
              child: Container(
                alignment: Alignment.centerLeft,
                child: Text(
                  name,
                  style: TextStyle(
                    fontSize: 15.0,
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
      onTap: onTab,
    );
  }
}
