class Livre {
  String titre;
  String auteur;
  final int _pages = 200;
   static int totalLivres = 0;

  Livre(this.titre, this.auteur) {
    totalLivres++;
  }
  
  int get pages => _pages;

  void afficherInfos() {
    print("Titre: $titre, Auteur: $auteur, Pages: $pages");
  }

  static void afficherTotal() {
    print("Total de livres créés : $totalLivres");
  }
}

class Roman extends Livre {
  String genre;

  Roman(String titre, String auteur, this.genre)
      : super(titre, auteur);

  void afficherRoman() {
    print("Titre: $titre, Auteur: $auteur, Genre: $genre");
  }
}

void main() {
  var l1 = Livre("Sapiens", "Yuval Noah Harari");
  var l2 = Livre("Clean Code", "Robert C. Martin");

  l1.afficherInfos();
  l2.afficherInfos();
  