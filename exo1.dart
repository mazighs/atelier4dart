class Couleur {
   final int r, g, b;
  
  Couleur(this.r, this.g, this.b); 
  Couleur.rouge() : r = 255, g = 0, b = 0;
   Couleur.vert() : r = 0, g = 255, b = 0;
   Couleur.bleu() : r = 0, g = 0, b = 255;

   void afficherCouleur() {
    print("(R:$r, V:$g, B:$b)");
  }
}


class Point {
  double _x, _y;
  Point(this._x, this._y);
   void move(double dx, double dy) {
    _x += dx;
    _y += dy;
     }
}
void main() {
  var pt = Point(2, 5);
    pt.display();
    pt.move(-1, 3);
    pt.display();
}