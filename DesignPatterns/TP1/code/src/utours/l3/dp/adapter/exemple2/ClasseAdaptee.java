package adapter.exemple2;

/**
 * Classe adaptée
 *
 * Cette classe fournit le service attendu par l'application mais selon des
 * modalités différentes : pb de type de données, de nom de méthodes, etc.
 * Elle est donc encapsulée dans un adaptateur, de façon à réaliser le
 * travail attendu en sous-main, l'adaptateur assurant la traduction
 * bidirectionnelle nécessaire (adaptation des données entrantes, appel
 * de la méthode ciblée, traduction du résultat produit).
 */
public class ClasseAdaptee {

    /**
     * Service ciblé.
     * Pour l'exemple, la méthode réalise une opération simple, sur un entier
     * de façon à produire un entier.
     * @param value [int] donnée d'entrée
     * @return [int] donnée de sortie
     */
    public int service_cible(int value) {
        return 10 * value + value;
    }
}
