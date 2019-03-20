void main() {}

class SingleTon {
  String name;
  static SingleTon _cache;

  //工厂函数不会自动生成实例
//  factory SingleTon([String name = 'sington']){
//    if (SingleTon._cache == null) {
//      SingleTon._cache = SingleTon(name);
//    }
//    return SingleTon._cache;
//  }

  //?? 符号的含义u为空的话就进行创建

  factory SingleTon([String name = 'SingleTon']) =>
      SingleTon._cache ??= SingleTon._newObject(name);

  SingleTon._newObject(this.name);
}

//const 创建对象的好处

class Rectangle {
  num left;
  num top;
}
