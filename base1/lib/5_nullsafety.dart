void main(List<String> args) {
  int x = -5;
  int? y;
  if(x>0){y=x;}
  y ??= throw Exception("hihi");
  int value = y /* == null ? 0 :y */; // y ?? 0;
  print(value);

  /* if(y==null){throw Exception("error");} */
}