import 'dart:io';
import 'dart:math';

List<String> Move = ["kéo", "búa", "bao"];
/* enum Move1 {keo,bua,bao} */
void main(List<String> args) {
  String choicePlayers;
  var rng = Random();
  while (true) {
    stdout.write('Mời bạn chọn (k,bu,ba): ');
    var input = stdin.readLineSync();
    if (input == "k" || input == "bu" || input == "ba") {
      if (input == "k") {
        choicePlayers = "kéo";
      } else if (input == "bu") {
        choicePlayers = "búa";
      } else {
        choicePlayers = "bao";
      }
      final random = rng.nextInt(3);
      /* final choiceAi = Move1.values[random]; */
      final choiceAi = Move[random];
      print('AI đã chọn $choiceAi');
      print('Bạn đã chọn $choicePlayers');
      if (choicePlayers == "kéo" && choiceAi == "bao" ||
          choicePlayers == "búa" && choiceAi == "kéo" ||
          choicePlayers == "bao" && choiceAi == "búa") {
        print("=> Bạn thắng");
      } else if (choicePlayers == choiceAi) {
        print("=> Hòa");
      } else
        print("=> Bạn thua");
    } else if (input == "q") {
      print('----------Bạn đã thoát cuộc chơi');
      break;
    } else {
      print("not valid");
    }
  }
}
