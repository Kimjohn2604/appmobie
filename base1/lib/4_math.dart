import 'dart:io';

class Tinh{
  String question;
  String answer;
  Tinh(this.question,this.answer);
}
String In(String question){
    stdout.write("Cho biet: $question");
    var answerType=stdin.readLineSync();
    return answerType.toString();
  }

void main(List<String> args) {
  /* Tinh tinh = Tinh('',''); */
  List<Tinh> questions = [
    Tinh("What is your name?", "dog"),
    Tinh("2+3= ", "5"),
    Tinh("7 + 8= ", "15"),
    Tinh("4+5*6-4= ", "30"),
    Tinh("15/5= ", "3"),
    ];
  for(Tinh question in questions){
    var answerlate =In(question.question);
    if(answerlate==question.answer){print('=>Đúng!');}
    else {print("Câu trả lời là ${question.answer}");}
  }
}