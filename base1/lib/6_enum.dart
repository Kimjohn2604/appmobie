/* void main(List<String> args) {
  var test1 = Test.test();
  print(Test.test());
  print(test1.ten);
  var test2= Test("cc", "huhu");
  print(test2.ten);
}

class Test {
  String ten;
  String ho;
  Test(this.ten, this.ho);
  factory Test.test() {
    return Test('cbc','bb');
  }
} */
void main(List<String> args) {
  var x = Test("name");
  var y = Test("name");
  if (x==y){print("valid");}
}
class Test {
  final String name;

  // _cache is library-private, thanks to
  // the _ in front of its name.
  static final Map<String, Test> _cache = <String, Test>{};

  factory Test(String name) {
    return _cache.putIfAbsent(name, () => Test._internal(name));
  }

  Test._internal(this.name);

}