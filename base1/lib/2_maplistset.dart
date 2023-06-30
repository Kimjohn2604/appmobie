// set là tập hợp các giá trị duy nhất
// list là tập hợp các giá trị có thể trùng lặp

void main(List<String> args) {
  /*  List<String> cities =['toyko','paris','hanoi'];
  /* var cities = <String> ['toyko','paris','hanoi']; */
  cities.length;
  cities.isEmpty;
  cities.add('value');
  cities.insert(1, 'element');
  cities.removeAt(2);
  cities.clear();
  cities.contains('element');
  cities.indexOf('hanoi'); //vị trí

  Set<String> task ={'mua','lua','cc'};
  task.elementAt(1);
  task.add('mua'); // trùng nó sẽ không hiển thị
  Set<String> task1 = {'mua', 'hihi','hhaha'};
  print(task.union(task1));
  print(task.intersection(task1)); // giống
  print(task.difference(task1)); // khác
  print(task.union(task1).difference(task.intersection(task1))); */

  Map<String, dynamic> happyPerson = {
    "name": "Trong",
    "age": 22,
    "height": "1m75",
    "weight": 65,
    "book" : 29.7,
    "chair": 27.6,
  };
  var name = happyPerson["name"];
  print(name);
  /* String name1 = happyPerson["name"]; */ /* name1 = happyPerson["name"] as String */
  for (var key in happyPerson.keys) {
    print(key);
  }
  for (var value in happyPerson.values) {
    print(value);
  }
  for (var entry in happyPerson.entries) {
    print("${entry.key} : ${entry.value}");
  }
  /* for (var key in happyPerson.keys){print(happyPerson[key]);} */
  final items =["book" ,"chair","tabble"];
  double sum = 0.0;
  for(var item in items){
    if(happyPerson[item]!=null){sum += happyPerson[item];}
    else{print('$item not valid');}
  }
  print("Tổng: \$$sum");
}
