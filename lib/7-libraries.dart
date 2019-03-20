import 'dart:math'; //导入库类

//import 'di'; 导库需要修改pubspec.yaml的库类

//部分导入
//import 'mylib.dart' show Test;
//show 表示的是 需要哪部分的数据  hide表示的是隐藏哪部分的数据
//import 'mylib.dart' hide Test;
import 'mylib.dart' deferred as LazyLib;
import 'package:flutter_app/core/lib.dart';

//库冲突的话 可以为其取一个别名
import 'mylib2.dart' as lib2;

//part 用来分割和表示重名的文件类,导入自定义库
import 'core/lib.dart';

void main() {
  //await Dio().get('https:www.baidu.com')
//  MyLib();
}

lazyLoad() async {
  //懒加载 延迟加载
  await LazyLib.loadLibrary();
}
