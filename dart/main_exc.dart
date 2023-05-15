void main01(List<String> args) {
  int a = 0;
  int b = 2;
  // double c = b / a;
  int c = b ~/ a;
  print(c);
}

void main02(List<String> args) {
  try {
    int a = 0;
    int b = 2;
    // double c = b / a;
    int c = b ~/ a;
    print(c);
  } on UnsupportedError {
    print("div par zéro !");
  } catch (e) {
    print(e);
  } finally {
    print("finally");
  }

  print('après');
}

int div(int a, int b) {
  return a ~/ b;
}

int callDiv(int a, int b) {
  var r = 0;
  try {
    print("open log ");
    print("write log $a,$b");
    r = div(a, b);
  } finally {
    print("close log ");
  }
  return r;
}

void main(List<String> args) {
  try {
    var a = 0;
    var b = 2;
    var c = callDiv(b, a);
    print("resultat $c");
  } catch (e) {
    print("Erreur ! $e");
  }
}
