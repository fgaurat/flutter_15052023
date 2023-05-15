class Rectangle {
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
  int get surface => _largeur * _longueur;

  void set longueur(int longueur) {
    _longueur = longueur;
  }

  void set largeur(int largeur) => _largeur = largeur;

  @override
  String toString() {
    return "${(Rectangle).toString()} longueur : $longueur, largeur: $largeur";
  }
}

void main(List<String> args) {
  // Rectangle r = Rectangle(largeur: 2, longueur: 3);
  Rectangle r = Rectangle(2, 3);
  Rectangle r1 = Rectangle.byName(largeur: 2, longueur: 5);
  Rectangle r2 = Rectangle.fromString("2x6");
  print(r.longueur);
  print(r.largeur);
  print(r.surface);

  String s = r1.toString();
  print(s);
  print(r2);
}
