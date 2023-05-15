import "calc_geometry.dart";
import "carre.dart";
import "rectangle.dart";

showPerimetre(CalcGeometry c) {
  print(c);
}

void main(List<String> args) {
  Rectangle r = Rectangle(2, 3);
  Carre c = Carre(2);
  showPerimetre(r);
  showPerimetre(c);
  // print(c);
  // print(c.surface());
}
