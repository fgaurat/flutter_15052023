late String h;

void main(List<String> args) {
  print("${args[0]} ${args[1]}");
  int a = int.parse(args[0]);
  int b = int.parse(args[1]);
  var c = a + b;
  print('Hello, World! $a + $b = $c');
  print(c.runtimeType);
  printInteger(c);

  int d = add(a, b);
  printInteger(d);

  int d1 = add2(value01: a, value02: b);
  printInteger(d1);

  // int e = 5;
  const f = 5;
  final g;

  g = 15;

  print(f);
  print(g);

  // h = "dd";
  print(h);
}

void printInteger(int a) {
  print("int : $a");
}

int add(int a, int b) {
  return a + b;
}

int add2({int value01 = 0, int value02 = 0}) {
  return value01 + value02;
}
