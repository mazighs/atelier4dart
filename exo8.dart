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

  Roman(String titre, String auteur, this.genre, {int pages = 200})
      : super(titre, auteur, pages: pages);

  void afficherRoman() {
    print("Titre: $titre, Auteur: $auteur, Genre: $genre, Pages: $pages");
  }
}

