import 'calc_geometry.dart';

class Rectangle implements CalcGeometry {
  int _longueur = 0;
  int _largeur = 0;

  // Rectangle({longueur = 0, largeur = 0}) {
  //   this._longueur = longueur;
  //   this._largeur = largeur;
  // }
  // Rectangle({longueur = 0, largeur = 0})
  //     : _largeur = largeur,
  //       _longueur = longueur {}

  Rectangle(this._longueur, this._largeur);
  Rectangle.byName({longueur = 0, largeur = 0})
      : _largeur = largeur,
        _longueur = longueur;

  Rectangle.fromString(String initValues) {
    List<String> i = initValues.split('x');
    _largeur = int.parse(i[0]);
    _longueur = int.parse(i[1]);
  }
  int get longueur => _longueur;
  int get largeur => _largeur;

  // int surface => _largeur * _longueur;
  // int perimetre => _largeur * 2 + _longueur * 2;

  void set longueur(int longueur) {
    _longueur = longueur;
  }

  void set largeur(int largeur) => _largeur = largeur;

  @override
  String toString() {
    return "${(Rectangle).toString()} longueur : $longueur, largeur: $largeur";
  }

  @override
  int perimetre() {
    return _largeur * 2 + _longueur * 2;
  }

  @override
  int surface() {
    return _largeur * _longueur;
  }
}
