void main() {
  //error exception
  //异常的抛出可以分为 exception（异常)和error(错误) 也可以抛出 OutofMemoryError的区别
  try {
    throw new NullThrownError();
  } catch (e, s) {
    print(e);
    print(s);
  }
}

class Child extends Parent {

  int xC;
  int xP;

  Child.aa(x, y) : super.aa(x, y);


//  Child(xC,xP):

  //一个强制的格式


}

//命名构造 命名的构造函数是不能够进行传递的
class Parent {
  int x;
  int y;

  Parent.aa(x, y)
      : x = x,
        y = y {
    print('父类命名构造函数');
  }
}
