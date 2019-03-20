import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  // This widget is the root of your application.

  GlobalKey<FormState> mLoginKey = GlobalKey();

  String username;
  String password;

  var variable = '12';

  String name = "Bob";

  //bool 类型的初始化的值是null

  //const 具有可传递性，不可进行修改
  static const ls1 = ["不可修改"];

//  final ls3 = [1,2,3];

  //const 和 final的区别
  //const 编译时期就已经确定，具有传递性，子元素是不可变的
  //final 类似java的final，必须初始化，不具有传递性，子元素是可变的

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        title: 'Flutter Demo',
        theme: ThemeData(
          primarySwatch: Colors.blue,
        ),
//      home: MyHomePage(title: 'Flutter Demo Home Page'),
        home: new Scaffold(
          appBar: new AppBar(
            title: new Text("Flutter's listview's item"),
          ),
//          body: new ListView.builder(itemCount: 40, itemBuilder: buildItem),
          body: new HomePage(),
        ));
  }

  Widget buildItem(BuildContext context, int index) {
    if (index.isOdd) return new Divider();
    //设置字体样式
    TextStyle textStyle =
        new TextStyle(fontWeight: FontWeight.bold, fontSize: 16);
    return new Padding(
      padding: const EdgeInsets.all(10.0),
      child: new Text("ListViewItem", style: textStyle),
    );
  }
}

class HomePage extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
    return new GridViewState();
  }
}

class ListState extends State {
  @override
  Widget build(BuildContext context) {
    return new MaterialApp(
      home: new Scaffold(
          appBar: new AppBar(title: new Text("Flutter App")),
          body: new ListView.builder(itemCount: 40, itemBuilder: buildItem)),
    );
  }

  Widget buildItem(BuildContext context, int index) => new Text("list item");
}

class GridViewState extends State {
  @override
  Widget build(BuildContext context) => new GridView.count(
        primary: false,
        padding: const EdgeInsets.all(8.0),
        mainAxisSpacing: 8.0,
        //竖向的间距
        crossAxisCount: 1,
        //横向Item的个数
        children: buildGridTileList(30),
      );

  List<Widget> buildGridTileList(int childCount) {
    List<Widget> widgetList = new List();
    for (int i = 0; i < childCount; i++) {
      widgetList.add(getItemWidget());
    }
    return widgetList;
  }

  Widget getItemWidget() {
    String url = "http://guolin.tech/book.png";
    return new Image(
      image: new NetworkImage(url),
    );
  }
}
