import 'rectangle.dart';

void main(List<String> args) {
  // Rectangle r = Rectangle(largeur: 2, longueur: 3);
  Rectangle r = Rectangle(2, 3);
  Rectangle r1 = Rectangle.byName(largeur: 2, longueur: 5);
  Rectangle r2 = Rectangle.fromString("2x6");
  print(r.longueur);
  print(r.largeur);
  print(r.surface());

  String s = r1.toString();
  print(s);
  print(r2);
}
