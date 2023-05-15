void main(List<String> args) {
  String? name = null;
  // String s = name!;
  // print(s);
  print("Hello");
  print(name);
  print(name?.length);

  int sizeOfName = name?.length ?? 0;
  print(sizeOfName);

  int? sizeOfName02 = name?.length;

  print(sizeOfName02);
}
