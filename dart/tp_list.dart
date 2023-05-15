void main(List<String> args) {
  const list = [1, 2, 3];

  for (var i in list) {
    //forEach
    print(i);
  }

  print(list);
  // list.add(4);
  // print(list);

  list.forEach((int v) {
    print("printValue $v");
  });

  var l2 = list.map((v) => v * 2).toList();

  print(l2);
}
