import 'package:flutter/material.dart';

class Swipe extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
    return new _SwipeToDissMissState();
  }
}

//item
// ignore: type_argument_not_matching_bounds
class _SwipeToDissMissState extends State<Swipe> {
  List<String> list = List.generate(20, (index) => "动脑学院  $index 元素");

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return new Scaffold(
        appBar: AppBar(
          title: Text("Dn学院"),
        ),
        body: new ListView(
          children: <Widget>[
            new ListTile(
              leading: new Icon(Icons.access_time),
              title: new Text('access_time'),
            ),
            new ListTile(
                leading: new Icon(Icons.accessibility_new),
                title: new Text('accessibility_new'))
          ],
        ));
  }
}
