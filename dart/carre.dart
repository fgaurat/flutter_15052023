import 'rectangle.dart';

class Carre extends Rectangle {
  int _cote = 0;

  Carre(cote)
      : _cote = cote,
        super(cote, cote);

  int get cote => _cote;
  void set cote(cote) => _cote = cote;

  @override
  String toString() {
    return "${(Carre).toString()} cote : $_cote";
  }
}
