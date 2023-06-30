import 'dart:math';

void main(List<String> args) {
  const pinaple = 5;
  const lemon = 6;
  bool Addmap2 = true;
  var map2 = {"mango": 8};
  var map1 = {
    "orrange": 4,
    "banana": 5,
    "apple": 6,
    if (pinaple > 1) "pinaple": pinaple,
    if (lemon > 1) "lemon": pinaple,
    if (Addmap2) ...map2,
  };

  /* if(pinaple >1){map1["pinaple"]= pinaple;}
  if(lemon >1){map1["lemon"]= lemon;}
  if(Addmap2){map1.addAll(map2);} */
  print(map1);
  var list= [0,1,2];
  var copy1 = list;
  copy1[0]=2; // =>in ra list va copy1 deu thay doi mang
  var copy2 = [
    for(int value in list)value
  ]; // var copy2=[...list]
  copy2[2]=7;
}
