/**
 * Moteur de recherche pour la biliothèque.
 * Les paramètres de recherche sont passés à la construction du moteur
 * et celui-ci effectue la recherche. Le resultat est une instance de ListeLivres
 * qui sera accessibles par la méthode getResult().
 * @author thierrybrouard
 * @see ListeLivres
 *
 */
public class SearchEngine {

	protected ListeLivres liste;
	
	/**
	 * Création de l'objet moteur de recherche.
	 * A la création le moteur effectue la recherche, crée la liste des résultats
	 * et la tient à disposition. 
	 * L'appel à la méthode getResult() permet de récupérer un objet ListeLivres. 
	 * @see ListeLivres
	 * @see #getResult()
	 */
	public SearchEngine() {
		
		// instanciation de la liste
		liste = new ListeLivres();
		
		// simulation de la création du résultat
		Livre livre1 = new Livre(
				"Design Patterns: Elements of Reusable Object-Oriented Software",
                "Erich Gamma, Richard Helm, Ralph Johnson, John Vlissides",
                "Addison-Wesley",
                1994,
                " Capturing a wealth of experience about the design of object-oriented software, four top-notch designers present a catalog of simple and succinct solutions to commonly occurring design problems. Previously undocumented, these 23 patterns allow designers to create more flexible, elegant, and ultimately reusable designs without having to rediscover the design solutions themselves. \n The authors begin by describing what patterns are and how they can help you design object-oriented software. They then go on to systematically name, explain, evaluate, and catalog recurring designs in object-oriented systems. With Design Patterns as your guide, you will learn how these important patterns fit into the software development process, and how you can leverage them to solve your own design problems most efficiently. \n Each pattern describes the circumstances in which it is applicable, when it can be applied in view of other design constraints, and the consequences and trade-offs of using the pattern within a larger design. All patterns are compiled from real systems and are based on real-world examples. Each pattern also includes code that demonstrates how it may be implemented in object-oriented programming languages like C++ or Smalltalk.",
                "978-0201633610");
		Livre livre2 = new Livre(
				"Design patterns. Catalogue des modèles de conception réutilisables",
                "Erich Gamma, Richard Helm, Ralph Johnson, John Vlissides",
                "Vuibert Informatique",
                1999,
                "",
                "978-2711786442");
		Livre livre3 = new Livre(
				"Refactoring: Improving the Design of Existing Code",
                "Martin Fowler, Kent Beck, John Brant, William Opdyke, Don Roberts",
                "AWP Professionna",
                1999,
                " As the application of object technology--particularly the Java programming language--has become commonplace, a new problem has emerged to confront the software development community. Significant numbers of poorly designed programs have been created by less-experienced developers, resulting in applications that are inefficient and hard to maintain and extend. Increasingly, software system professionals are discovering just how difficult it is to work with these inherited, non-optimal applications. For several years, expert-level object programmers have employed a growing collection of techniques to improve the structural integrity and performance of such existing software programs. Referred to as refactoring, these practices have remained in the domain of experts because no attempt has been made to transcribe the lore into a form that all developers could use...until now. In Refactoring: Improving the Design of Existing Code, renowned object technology mentor Martin Fowler breaks new ground, demystifying these master practices and demonstrating how software practitioners can realize the significant benefits of this new process.\n With proper training a skilled system designer can take a bad design and rework it into well-designed, robust code. In this book, Martin Fowler shows you where opportunities for refactoring typically can be found, and how to go about reworking a bad design into a good one. Each refactoring step is simple--seemingly too simple to be worth doing. Refactoring may involve moving a field from one class to another, or pulling some code out of a method to turn it into its own method, or even pushing some code up or down a hierarchy. While these individual steps may seem elementary, the cumulative effect of such small changes can radically improve the design. Refactoring is a proven way to prevent software decay.\n In addition to discussing the various techniques of refactoring, the author provides a detailed catalog of more than seventy proven refactorings with helpful pointers that teach you when to apply them; step-by-step instructions for applying each refactoring; and an example illustrating how the refactoring works. The illustrative examples are written in Java, but the ideas are applicable to any object-oriented programming language.",
                "978-0201485677");
		Livre livre4 = new Livre(
				"Domain-Driven Design: Tackling Complexity in the Heart of Software",
                "Eric Evans",
                "Addison-Wesley",
                2003,
                " The software development community widely acknowledges that domain modeling is central to software design. Through domain models, software developers are able to express rich functionality and translate it into a software implementation that truly serves the needs of its users. But despite its obvious importance, there are few practical resources that explain how to incorporate effective domain modeling into the software development process.\n Domain-Driven Design fills that need. This is not a book about specific technologies. It offers readers a systematic approach to domain-driven design, presenting an extensive set of design best practices, experience-based techniques, and fundamental principles that facilitate the development of software projects facing complex domains. Intertwining design and development practice, this book incorporates numerous examples based on actual projects to illustrate the application of domain-driven design to real-world software development.\n Readers learn how to use a domain model to make a complex development effort more focused and dynamic. A core of best practices and standard patterns provides a common language for the development team. A shift in emphasis--refactoring not just the code but the model underlying the code--in combination with the frequent iterations of Agile development leads to deeper insight into domains and enhanced communication between domain expert and programmer. Domain-Driven Design then builds on this foundation, and addresses modeling and design for complex systems and larger organizations.",
                "978-0321125217");
		
		// ajout des livres à la collection
		liste.addLivre(livre1);
		liste.addLivre(livre2);
		liste.addLivre(livre3);
		liste.addLivre(livre4);		
	}

	/**
	 * Récupétation de la liste des livres trouvés par le moteur
	 * @return objet ListeLivres initialisé et contenant les livres "réponse"
	 * @see ListeLivres
	 */
    public ListeLivres getResult() {
    	return liste;
    }

}