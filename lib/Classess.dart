//多重继承
class Person extends Anim {}

abstract class Anim {}

class PersonInfo {
  void showInfo() {
    print("this is show person info");
  }
}

void main() {
  print("开始打印该数据");
}

class HttpClient {
  static final HttpClient _client = new HttpClient._internal();

  HttpClient._internal();

  factory HttpClient() {
    return _client;
  }

  var client1 = HttpClient();

  var client2 = HttpClient();

  void showInfo() {
    print(identical(client1, client2));

//    var req = Request("http:www.baidu.com", "params");
//    req.show();
  }
}

class Request {
  String _url;
  String _method;

  //下划线表明是私有的
  String params;

  Request(this._url, this.params);

  void show() {
    print('url = $_url,method = $_method');
  }
}
