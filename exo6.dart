abstract class Connectable {
  void connecter(String utilisateur);
  void deconnecter();
}
class ServeurAPI implements Connectable {
  @override
  void connecter(String utilisateur) {
    print("ServeurAPI : Connexion établie pour $utilisateur.");
  }
    @override
  void deconnecter() {
    print("ServeurAPI : Déconnexion réussie.");
  }
}
class BaseDeDonnees implements Connectable {
   @override
  void connecter(String utilisateur) {
    print("BaseDeDonnees : Utilisateur $utilisateur connecté.");
  }

  @override
  void deconnecter() {
    print("BaseDeDonnees : Déconnexion réussie.");
  }
}
void main() {
  var s = ServeurAPI();
  var b = BaseDeDonnees();
   List<Connectable> services = [s, b];
    for (var service in services) {
    service.connecter("Admin");
    service.deconnecter();
  }
}