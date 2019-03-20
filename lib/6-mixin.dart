void main() {
  Bicycle().transport();
  print(AB().mes());

  var list = List<String>();
  print(list is List<String>);
  //运行时期 都会存在，java泛型会被擦除，在运行时期确定
  print(list.runtimeType);
}

//交通transportation
abstract class Transportation {
  void transport();
}

//自行车
class Bicycle extends Transportation {
  String safdtIndex() => 'low';

  String powerUnit() => "2个轮子";

  @override
  void transport() {
    print('Motocycle:\n ${powerUnit()}');
  }
}

//dart中的多继承

// ignore: mixin_inherits_from_not_object
class Car extends Transportation with Bicycle {
  // ignore: mixin_inherits_from_not_object
  @override
  void transport() {}
}

class A {
  String mes() => "mesA";
}

class B {
  String mes() => "mesB";
}

class C {
  String mes() => "mesC";
}

//这里的implement知识表明了要实现A的方法，但是没有做 newAB()打印的是B的数据
//后面的会覆盖前面的
class AB extends C with B implements A {}
