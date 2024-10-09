public class UnHerosSeDeplace {
    public static void main(String[] args) {
        Voiture voiture = new Voiture();
        Ascenseur ascenseur = new Ascenseur();
        Fusee fusee = new Fusee();

        System.out.println("Voiture :");
        voiture.afficher();
        voiture.seDeplacer();
        voiture.afficher();
        System.out.println();

        System.out.println("Ascenseur :");
        ascenseur.afficher();
        ascenseur.seDeplacer();
        ascenseur.afficher();
        System.out.println();
        
        System.out.println("Fusee :");
        fusee.afficher();
        fusee.seDeplacer();
        fusee.afficher();
    }
}
