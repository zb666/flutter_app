void main() {}

abstract class Message {
  factory Message(String type) {
    switch (type) {
      case 'foot':
        return new FootMes();
      case 'back':
        return new BackMes();
      case 'special':
        return new SpecialMes();
    }

    void doSomeThing() {}
  }
}

//Dart中没有接口
// 所有的类都可以当做接口
class FootMes implements Message {}

class BackMes implements Message {}

class SpecialMes implements Message {}

//class ExtendMs extends Message{}

class ClassFunction {
  //可调用的类
  call(String a, String b, String c) => '$a $b $c';
}
