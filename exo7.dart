class Tache {
  String description;
  static int nombreTotal = 0;
  Tache(this.description) {
    nombreTotal++;
  }
}
void main() {
  var t1 = Tache("Aller faire les courses");
  var t2 = Tache("Étudier");
  var t3 = Tache("Coder en Dart");

  print("Nombre total de tâches : ${Tache.nombreTotal}");
}



