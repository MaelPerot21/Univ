 --
-- Data for Name: cg_article; Type: TABLE DATA; Schema: public; Owner: postgres
--

INSERT INTO cg_article VALUES (1, 13, 2, 'Les faux espoirs de la biométrie', 'La biométrie est à la mode. Se fondant sur des critères physiques propres à chaque individu (empreinte digitale, iris de l''œil, paume de la main...), cette technique de reconnaissance et de sécurisation aurait pourtant tendance à créer un faux sentiment de sécurité: non seulement ce genre de mécanismes n''a pas encore été suffisamment évalué, mais il existe d''ores et déjà nombre de méthodes, faciles à mettre en place, permettant d''usurper l''identité d''un individu.

Ce tableau noir est dressé par Philippe Wolf, responsable du centre de formation de la Direction centrale de la sécurité des systèmes d''information (DCSSI), dans un article d''une revue du CNRS (*). Rattachée au Secrétariat général de la défense nationale (SGDN), la DCSSI a pour mission de «contribuer à l''expression de la politique gouvernementale et assurer la fonction d''autorité nationale de régulation en matière de sécurité des systèmes d''information».

Constatant que de nombreux assistants personnels (PDAs) sont aujourd''hui équipés d''un dispositif d''authentification biométrique et que ce marché est en plein essor, Wolf présente les «causes possibles de la fascination actuelles». ');
INSERT INTO cg_article VALUES (2, 13, 1, 'Biométrie - état de l''art', ' Identification des personnes

Depuis le début du XXIe siècle, le mot « biométrie » est utilisé également dans le sens plus restrictif de l''« identification des personnes » en fonction de caractéristiques biologiques telles que les empreintes digitales, les traits du visage, etc.
Informations complémentaires

En anglais, la distinction entre les deux acceptions du mot biométrie est parfois faite en utilisant respectivement biometry dans le premier cas et biometrics dans le deuxième cas. Dans le premier cas, le mot biostatistique (en anglais : biostatistics) est aussi considéré dans une certaine mesure comme équivalent de biométrie, en particulier dans le domaine médical.

On pourrait ajouter qu''au cours du XIXe siècle, le mot biométrie avait déjà été utilisé, sans réelles bases scientifiques, dans l''optique de la recherche des "vibrations vitales", en vue de mesurer des degrés de vie, de santé et de maladie.

    Lyne Billard. The roads traveled: our 50-year journey. In: Peter Armitage, Herbert A. David (eds). Advances in biometry: 50 years of the International Biometric Society. Wiley, New York, 1996, 1-20 (version PDF).
    Pierre Dagnelie. Les mots "biomètre", "biométrie" et biométrie" au XIXe siècle. Biometric Bulletin 5 (3), 3-4, 1988 (version PDF).
    J.O. Irwin. Biometric method, past, present, and future. Biometrics 15 (3), 363-375, 1959 (première page de l''article).

Identification des personnes

Le CLUSIF définit sa propre acception du mot biométrie :

    « étude mathématique des variations biologiques à l''intérieur d''un groupe déterminé ». ');
INSERT INTO cg_article VALUES (3, 1, 3, 'Mathématiques et
reconnaissance des formes', 'La reconnaissance des formes, nous reviendrons sur la signi?cation
donnée ici à ce terme, représente un enjeu important de la recherche
en informatique. Notre propos sera ici d’expliquer pourquoi de nom-breux mathématiciens ont contribué à faire progresser ce domaine de
recherche depuis maintenant plus de vingt ans. Nous souhaiterions aussi
convaincre le lecteur du fait qu’il s’agit d’un problème complexe et dif-?cile, dans lequel les avancées ont été au ?l des ans modestes et pro-gressives, au prix d’élaborations théoriques importantes. Nous sommes
convaincus qu’il continuera d’en être ainsi : nous ne pensons pas qu’il
existe de recette miracle ni non plus de di?culté rédhibitoire, mais que
des progrès continueront à voir le jour, et qu’ils seront le fruit des e?orts
conjugués d’une communauté de chercheurs qui ne cesse de croître et qui
enjambe les clivages traditionnels entre disciplines.
En un mot la reconnaissance des formes consiste à repérer dans des
signaux compliqués (signal de parole ou images numérisées, mais aussi
texte en langue naturel ou séquence d’ADN ...) la présence de certaines
structures (ou objets, ou formes ...) et à les classer en un nombre res-treint de classes pertinentes pour l’application envisagée, le tout de fa-çon automatique, à l’aide d’un ordinateur. Cette dé?nition peut paraître
?oue ; la discipline tire en fait sa cohérence de l’existence de di?cultés
techniques communes aux di?érents cas de ?gure possibles.');
INSERT INTO cg_article VALUES (4, 1, 3, 'Reconnaissance des formes et classi?cation', 'R ˆole de la reconnaissance des formes
– La reconnaissance des formes (RdF) vise la perception et l’interpr´etation de l’environnement
– Une phase pr´eliminaire consiste `a num´eriser des ´el´ements du monde r´eel (acquisition des donn´ees)
– ´Etant donn´ee une information riche et non structur´ee (par exemple une image), la RdF a pour but de lui associer
une signi?cation symbolique (par exemple une ´etiquette)
– La RdF peut ˆetre perc¸ue comme un proc´ed´e m´ethodique de r´eduction d’information, pour ne conserver que l’in-terpr´etation pertinente
Domaines d’application
– La RdF est utilis´e dans de nombreux domaines d’applications :
– l’analyse de signaux sismiques,
– l’analyse d’´electrocardiogrammes,
– la reconnaissance de la parole,
– la reconnaissance de l’´ecriture,
– l’analyse de documents,
– imagerie m´edicales (microscope, radiographie, RMN, ...),
– imagerie satellitaire,
– applications militaires (observation, guidage, ...)
– la biom´etrie (reconnaissance d’empreintes, de faces, ...),
– la vision par ordinateur (analyse de sc`enes 3D)
Fondements th´eoriques
– Les m´ethodes mises en oeuvre dans les syst`emes de RdF s’appuient sur de nombreux domaines :
– l’analyse num´erique,
– les statistiques,
– l’optimisation combinatoire,
– la recherche op´erationnelle,
– l’analyse syntaxique,
– la th´eorie des graphes,
– l’intelligence arti?cielle,
– ...
Origine des dif?cult´es
– Le probl`eme de la RdF est li´e `a la co');
INSERT INTO cg_article VALUES (5, 2, 2, 'Théorie de l''odonnancement', 'La théorie de l''ordonnancement est une branche de la recherche opérationnelle qui s''intéresse au calcul de dates d''exécution optimales de tâches. Pour cela, il est très souvent nécessaire d''affecter en même temps les ressources nécessaires à l''exécution de ces tâches. Un problème d''ordonnancement peut être considéré comme un sous-problème de planification dans lequel il s''agit de décider de l''exécution opérationnelle des tâches planifiées.
Sommaire

    1 Définition
    2 Les tâches
    3 Les ressources
    4 Les contraintes
    5 Les objectifs
    6 Ordonnancement robuste
    7 Problèmes classiques
    8 Références

Définition

Un problème d''ordonnancement consiste à organiser dans le temps la réalisation de tâches, compte tenu de contraintes temporelles (délais, contraintes d''enchaînement) et de contraintes portant sur la disponibilité des ressources requises.

En production (manufacturière, de biens, de service), on peut le présenter comme un problème où il faut réaliser le déclenchement et le contrôle de l''avancement d''un ensemble de commandes à travers les différents centres composant le système.

Un ordonnancement constitue une solution au problème d''ordonnancement. Il est défini par le planning d''exécution des tâches (« ordre » et « calendrier ») et d''allocation des ressources et vise à satisfaire un ou plusieurs objectifs. Un ordonnancement est très souvent représenté par un diagramme de Gantt.
Les tâches

Une tâche est une entité élémentaire localisée dans le temps par une date de début et/ou de fin, dont la réalisation nécessite une durée, et qui consomme un moyen selon une certaine intensité. Certains modèles intègrent la notion de date due, une date à laquelle la tâche doit être finie; dans ces cas, le retard induit une pénalité.

Selon les problèmes, les tâches peuvent être exécutées par morceaux, ou doivent être exécutées sans interruption ; on parle alors respectivement de problèmes préemptifs et non préemptifs. Lorsque les tâches ne sont soumises à aucune contrainte de cohérence, elles sont dites indépendantes.');
INSERT INTO cg_article VALUES (6, 2, 3, 'Intro duction au x prob l`em es d’ordonnan cemen t', 'D´e?n iti on et formulation d u probl`eme
d’o donn an ceme nt

D´e ?nition
Le probl`em e d’ordonnance me nt consis te `a organis er dans le
te mps la r´ealisation d’un ense mble de tˆaches, compte te nu de
contrainte s te mp orelles (d´elais , contraintes d’enchaˆinem ents,
...) et de contrainte s p ortant s ur l’utilisat ion e t la disp onibilit´e
des re ss ource s re quise s.
Un e nsem ble de tˆaches
Un e nvironnem ent de ress ourc es p our e ?ec tuer les tˆaches
De s contrainte s sur les tˆaches et les ress ource s
Un crit`e re d’optim isat ion
=?D´e terminer le s dates d’e xec ut ion de s tˆaches');
INSERT INTO cg_article VALUES (7, 2, 2, 'L''odonnnacement du travail', 'Pour faciliter le suivi des opérations à entreprendre, éviter les oublis et les malentendus, 
l’information doit parfaitement circuler. Pour cela nous disposons d’outils : 
 
-  le réseau PERT 
-  le diagramme de GANTT 
 
Objectifs : 
 
•  Programmer les moyens humains et matériels selon l’estimation des charges futures. 
•  Coordonner les tâches. 
•  Déterminer les délais. 
•  Contrôler l’avancement des travaux. 
 
       LE RESEAU PERT  
 
Le Program Evaluation and Review Technic (Technique d’Evaluation et de Contrôle des 
Programmes) est une méthode mise au point aux USA en 1958 par Willard FRAZARD. Elle permit 
à l’US NAVY de gagner 2 ans sur la fabrication des fusées Polaris (projet établi initialement sur 7 
ans). 
 
Rôle du réseau PERT : 
 
a) Le PERT présente d’une façon visuelle l’enchaînement logique des tâches en vue : 
 
-  d’en faciliter la coordination et le contrôle, 
- d’améliorer les prévisions de durée et de coût. 
 
b) Le tracé du réseau PERT permet de connaître le chemin critique  (c’est-à-dire le chemin le plus   
long entre la première et la dernière étape) et par conséquent : 
 
-  la durée totale du projet, 
-  les tâches pour lesquelles tout retard entraîne l’allongement du projet. 
 
   
         
       LE DIAGRAMME DE GANTT  
 
Le diagramme de GANTT est un planning représentant graphiquement le réseau PERT. Il permet le 
suivi des différentes opérations mises en œuvre et leur réajustement compte tenu d’éventuels aléas 
(ex :retard). 
 
Rôle du diagramme de GANTT : 
 
Il renseigne sur : 
 
-  la durée d’une tâche, 
-  le moment où elle débute et celui où elle s’achève au plus tôt et au plus tard.      ');
INSERT INTO cg_article VALUES (8, 11, 2, 'Indexation automatique de documents', 'L’indexation automatique de documents est un domaine de l''informatique et des Sciences de l''information et des bibliothèques qui utilise des méthodes logicielles pour établir un index pour un ensemble de documents et faciliter l''accès ultérieur aux documents et à leur contenu. En revanche, les fichiers séquentiels indexés constituent une technique d''usage très général en informatique, pour le stockage de données numériques (Voir Fichier (informatique)).

Un index est en toute généralité, une liste de descripteurs à chacun desquels est associée une liste des documents et/ou parties de documents auxquels ce descripteur renvoie. Ce renvoi peut être pondéré. Lors de la recherche d''information d''un usager, le système rapprochera la demande de l''index pour établir une liste de réponses. En amont, les méthodes utilisées pour constituer automatiquement un index pour un ensemble de documents varient considérablement avec la nature des contenus documentaires à indexer.

 Indexation de textes

Pour un texte, un index très simple à établir automatiquement est la liste ordonnée de tous les mots apparaissant dans les documents avec la localisation exacte de chacune de leurs occurrences ; mais un tel index est volumineux et surtout peu exploitable.

L''indexation automatique tend donc plutôt à rechercher les mots qui correspondent au mieux au contenu informationnel d''un document. On admet généralement qu''un mot qui apparaît souvent dans un texte représente un concept important. Ainsi, la première approche consiste à déterminer les mots représentatifs par leur fréquence. Cependant, on s''aperçoit que les mots les plus fréquents sont des mots fonctionnels (ou mots outils, mots vides). En français, les mots « de », « un », « les », etc. sont les plus fréquents. En anglais, ce sont « of », « the », etc.

Il est évident que l’on ne peut pas garder ces mots à haute fréquence mais peu porteur de sens en terme. C’est pourquoi on introduit dans les moteurs de recherche des opérations de filtrage de ces mots. Ces listes de mots sont appelées anti-lexiques ou plus fréquemment stoplist1.

Une autre opération est ensuite couramment appliquée lors de l''indexation. Elle consiste à effacer les terminaisons (flexions de nombre, genre, conjugaison, déclinaison) afin de retrouver les racines des mots. Cette opération est appelée stemming (une autre solution voisine appelée lemmatisation conduit globalement au même résultat). Ce procédé permet de relever les fréquences en cumulant les nombres d''occurrence des variations des mêmes mots.

Chaque unité documentaire (chaque document ou chaque passage de document) peut alors faire l''objet d''une représentation vectorielle : les coordonnées représentent les fréquences des mots non vides. Lorsque l''on effectue cette opération pour un corpus de documents ou de pages web on obtient une matrice dont les colonnes représentent un document et les coordonnées la fréquence des termes.

Les moteurs de recherche de première génération s''appuient sur des formules de pondération, généralement pour affecter un poids élevé aux termes non-distribués uniformément au sein du corpus. Il existe un grand nombre de formules de pondération dont le but est de distribuer le poids pour contribuer à la différentiation informationnelle des documents. Certaines formules de pondération harmonisent les poids en fonction de la longueur des documents où la fréquence des termes est globalement plus élevée, d''autres formules s''appuient sur la fréquence maximale des termes afin de concilier l''aspect multi-thématique d''un document avec des documents mono thématiques. Les formules de pondération les plus connues sont TF-IDF2 (term frequency . inverse document frequency).

Les moteurs de seconde génération s''appuient non seulement sur la fréquence des termes pour indexer les pages web mais aussi sur la popularité des sources. En naviguant de lien en lien, les robots indexent les termes utilisés par une page web pour décrire une autre page web. À chaque fois qu''un utilisateur suit ce lien, il « vote » la pertinence des descripteurs utilisés. Le page-ranking est ensuite calculé selon la popularité des descripteurs et un coefficient de similarité issu de la modélisation vectorielle.
Indexation d''images
Article détaillé : recherche d''images par le contenu.

L''indexation d''images consiste après analyse de tous les pixels ou d''une partie réduite (masque) de transformer l''information des pixels en un autre type d''information de telle sorte que la recherche d''image (à l''identique, ou de même catégorie) soit facilitée (en termes informatiques, taille compacte, vitesse, tout en conservant une sémantique proche de l''utilisateur). Les premiers systèmes d''indexation des images ont utilisé la couleur (système QBIC IBM), plus tard l''analyse des couleurs par histogramme s''est à la fois améliorée et diversifiée. Plusieurs modèles de représentations des couleurs ont été utilisés, des raffinements de l''histogramme global primitif ont été introduits. Les améliorations de l''histogramme couleur ont surtout porté sur l''ajout d''informations spatiales à l''origine totalement absentes. Les meilleurs algorithmes actuels de reconnaissance utilisent une dérivée de l''image. Seule une partie des points plus importants que d''autres sont analysés précisément. Il n''existe pas de système connu permettant d''égaler les performances humaines. On peut toutefois affirmer qu''il existe des solutions industrielles (univers restreint) qui sont économiquement viables. La méthode des SIFT de D.Lowe fait souvent référence en matière de description multi échelle invariante par rotation et translation.');
INSERT INTO cg_article VALUES (9, 10, 4, 'Introduction à la vision par ordinateur', 'u''est-ce que la vision ?

Elle semble toute simple, cette question, mais si vous aviez à y répondre avec vos propres mots, que diriez-vous ?

Allez, je vous aide un peu. « Voir » c''est, entre autres, discerner et reconnaître les formes, les couleurs et les textures du monde qui nous entoure.

On pourrait croire, à tort, que nous avons besoin uniquement de nos yeux pour cela, mais la réalité est tout autre : nos yeux ne servent qu''à capter le signal contenu dans les rayons lumineux qui viennent frapper nos rétines, pas à en extraire des informations. Ça, c''est le travail de la zone de notre cerveau que nous appelons le cortex visuel, dont les « bugs » ne sont rien de moins que les illusions d''optique ! Cela veut dire que la vision, c''est l''association entre le sens de la vue et un ensemble de processus cognitifs pour lesquels nous avons besoin d''utiliser notre cerveau.

Aujourd''hui, cela fait déjà bien longtemps que nous avons donné le sens de la vue aux ordinateurs grâce aux caméras numériques, mais si l''on se fie à la définition que nous venons de formuler, cela ne suffit pas à les doter de vision : il leur manque encore la capacité à extraire des informations des images et des flux vidéo, de manière à percevoir, analyser et comprendre le monde qu''ils observent.

C''est ici qu''intervient ce vaste domaine de recherche qu''est la vision par ordinateur, à la croisée des chemins entre les mathématiques, le traitement du signal et l''intelligence artificielle.

Dans ce cours, nous allons découvrir ensemble les notions de base du traitement d''images et de flux vidéo, ainsi que les principales problématiques de la vision par ordinateur. Et elles sont nombreuses, vous pouvez me croire ! Entre le filtrage, la segmentation d''objets, la reconnaissance de formes, la détection du mouvement, le suivi de cibles et autres joyeusetés, nous aurons l''occasion de découvrir ensemble un large spectre de problèmes divers et variés, ainsi que des éléments de réponse pour les résoudre. ');
INSERT INTO cg_article VALUES (10, 10, 2, 'Vision pré-attentive:
Détection de contours
Détection de points d''intérêt', 'Amélioration d’images : histogrammes,
lissage, filtrage médian
• Contours d''une image de dimension
quelconque (2D-3D) = extrema locaux du
gradient ou zéros du laplacien
• Difficulté : tenir compte du bruit dans les
images
• Filtres optimaux : meilleur compromis
détection-localisation en tenant compte du
bruit
• Implantation : convolution ou filtre récursif');


--
-- Data for Name: cg_assister; Type: TABLE DATA; Schema: public; Owner: postgres
--



--
-- Data for Name: cg_auteur; Type: TABLE DATA; Schema: public; Owner: postgres
--

INSERT INTO cg_auteur VALUES (36, '0245124578', 'PLOUIC', 'Aurelien', 'plouic.aurelien@unil.fr');
INSERT INTO cg_auteur VALUES (37, '0674581212', 'NERON', 'Emannuelle', 'emanuelle.neron@univ-aixmarseille.fr');
INSERT INTO cg_auteur VALUES (38, '0912457896', 'NIRTA', 'Laure', 'laure.nitra@univ-poitiers.fr');
INSERT INTO cg_auteur VALUES (39, '0526457893', 'MARAIS', 'Martin', 'martin.marais@univ-poitiers.fr');
INSERT INTO cg_auteur VALUES (40, '0741235896', 'BARASS', 'Denis', 'denis.barass@univ-poitiers.fr');
INSERT INTO cg_auteur VALUES (41, '0412457892', 'CARRE', 'Valerie', 'valerie.caree@unil.fr');
INSERT INTO cg_auteur VALUES (42, '1425789124', 'AZERTY', 'Stephane', 'stephane.azerty@univ-tours.fr');
INSERT INTO cg_auteur VALUES (43, '0412417453', 'LIRE', 'Servane', 'servane.lire@univ-orleans.fr');
INSERT INTO cg_auteur VALUES (44, '0812411211', 'MESCLUN', 'Gilles', 'gilles.mesclun@univ-strasbourg.fr');


--
-- Data for Name: cg_batiment; Type: TABLE DATA; Schema: public; Owner: postgres
--

INSERT INTO cg_batiment VALUES (1, 34651, 'ENSIP', 'Avenue du recteur Pineau');
INSERT INTO cg_batiment VALUES (2, 34651, 'B3 Sciences', 'Rue Albert Turpain');
INSERT INTO cg_batiment VALUES (3, 34651, 'B6 Sciences', 'Rue Marie Louise Dubreuil');
INSERT INTO cg_batiment VALUES (4, 34651, 'B7 Sciences', 'Rue Albert Turpain');
INSERT INTO cg_batiment VALUES (5, 34651, 'B8 Sciences', 'Rue Albert Turpain');
INSERT INTO cg_batiment VALUES (6, 34651, 'B34', 'Rue Jacques Fort');
INSERT INTO cg_batiment VALUES (7, 34651, 'B35 Sciences', 'Rue Michel Brunnet');
INSERT INTO cg_batiment VALUES (8, 34651, 'B30 Sciences', 'Rue Jacques Fort');
INSERT INTO cg_batiment VALUES (9, 34651, 'B31 Sciences', 'Rue Jacques Fort');
INSERT INTO cg_batiment VALUES (10, 34651, 'IUT Poitiers', 'Avenue Jacques Coeur');
INSERT INTO cg_batiment VALUES (11, 34668, 'IUT Chatellerault', 'Rue Alfred Nobel');
INSERT INTO cg_batiment VALUES (12, 34681, 'Annexe Futuroscope', 'Rue de l''avenir');
INSERT INTO cg_batiment VALUES (13, 32478, 'IUT Niort', 'Rue Archimède');
INSERT INTO cg_batiment VALUES (14, 34662, 'Annexe Buxerolles', 'Rte de Limoges');


--
-- Data for Name: cg_congres; Type: TABLE DATA; Schema: public; Owner: postgres
--

INSERT INTO cg_congres VALUES (1, 1, 10, 'ICPR 2012', '2012-07-01', '2012-07-05');
INSERT INTO cg_congres VALUES (2, 1, 2, 'ICASSP 2013', '2013-02-27', '2013-03-02');
INSERT INTO cg_congres VALUES (3, 2, 8, 'ECG 2013', '2013-04-01', '2013-04-01');
INSERT INTO cg_congres VALUES (4, 3, 9, 'BTAS 2012', '2012-11-17', '2012-11-20');


--
-- Data for Name: cg_domaine; Type: TABLE DATA; Schema: public; Owner: postgres
--

INSERT INTO cg_domaine VALUES (1, 'Informatique');
INSERT INTO cg_domaine VALUES (3, 'Bio technologie');
INSERT INTO cg_domaine VALUES (5, 'Santé');
INSERT INTO cg_domaine VALUES (2, 'Mathématiques appliquées');
INSERT INTO cg_domaine VALUES (4, 'Chimie des milieux et des matériaux');
INSERT INTO cg_domaine VALUES (6, 'Environnement');
INSERT INTO cg_domaine VALUES (8, 'Neurosciences');
INSERT INTO cg_domaine VALUES (9, 'Paléontologie');
INSERT INTO cg_domaine VALUES (10, 'Science et société');
INSERT INTO cg_domaine VALUES (11, 'Physique');
INSERT INTO cg_domaine VALUES (12, 'Imagerie');
INSERT INTO cg_domaine VALUES (13, 'Telecommunications');
INSERT INTO cg_domaine VALUES (14, 'Energie');
INSERT INTO cg_domaine VALUES (7, 'Astronomie');


--
-- Data for Name: cg_employeur; Type: TABLE DATA; Schema: public; Owner: postgres
--

INSERT INTO cg_employeur VALUES (2, 34651, 'Université de POITIERS');
INSERT INTO cg_employeur VALUES (3, 30947, 'Université Pierre et Marie CURIE');
INSERT INTO cg_employeur VALUES (4, 17351, 'Université d''Orléans');
INSERT INTO cg_employeur VALUES (5, 24026, 'Université de Technologie de Compiègne');
INSERT INTO cg_employeur VALUES (6, 36291, 'Université d''Orsay Paris Sud');
INSERT INTO cg_employeur VALUES (7, 36912, 'University og Minnesota');
INSERT INTO cg_employeur VALUES (8, 36913, 'Chicago State University');
INSERT INTO cg_employeur VALUES (9, 36910, 'Universidade do Porto');
INSERT INTO cg_employeur VALUES (10, 36911, 'Universidade de Lisboa');
INSERT INTO cg_employeur VALUES (1, 14522, 'Université Rabelais TOURS');
INSERT INTO cg_employeur VALUES (11, 4454, 'Université d''AIX-MARSEILLE');
INSERT INTO cg_employeur VALUES (12, 27637, 'Université de Strasbourg');
INSERT INTO cg_employeur VALUES (13, 36914, 'UNIL');


--
-- Data for Name: cg_inscription; Type: TABLE DATA; Schema: public; Owner: postgres
--



--
-- Data for Name: cg_participant; Type: TABLE DATA; Schema: public; Owner: postgres
--

INSERT INTO cg_participant VALUES (1, 14522, 1, '17 bd heurteloup', 'DURAND', 'Pierre', 'pierre.durand@univ-tours.fr');
INSERT INTO cg_participant VALUES (2, 14325, 2, '27 rue grande', 'JEAN', 'Henri', 'jean.henru@univ-tours.fr');
INSERT INTO cg_participant VALUES (24, 17336, 4, '27 rue grande', 'DUPONT', 'Anne', 'anne.dupont@univ-orleans.fr');
INSERT INTO cg_participant VALUES (25, 17343, 4, '12 rue du petit verger', 'SERES', 'Claire', 'seres.claire@univ-orleans.fr');
INSERT INTO cg_participant VALUES (26, 17350, 4, '21 imp de la pépiniere', 'MIRON', 'Kevin', 'miron.kevin@univ-orleans.fr');
INSERT INTO cg_participant VALUES (27, 17351, 4, '21 av Jean Jaures', 'TIAN', 'Marc', 'tian.marc@univ-orleans.fr');
INSERT INTO cg_participant VALUES (28, 17351, 4, '10 place du martroi', 'PARIS', 'Frederic', 'paris.frederic@univ-orleans.fr');
INSERT INTO cg_participant VALUES (29, 17351, 4, '24 ru du cerf-volant', 'PEONCLE', 'Enrick', 'petoncle.enrick@univ-orleans.fr');
INSERT INTO cg_participant VALUES (30, 34662, 2, 'rue du 8 mai 1945', 'ROSER', 'Louis', 'louis.roser@univ-poitiers.fr');
INSERT INTO cg_participant VALUES (31, 34662, 2, '7 rue des tilleuls', 'VIGNER', 'Marie', 'marie.vigner@univ-poitiers.fr');
INSERT INTO cg_participant VALUES (32, 34661, 2, '4 allée Le Notre', 'RAPPE', 'Maxence', 'maxence.rappe@univ-poitiers.fr');
INSERT INTO cg_participant VALUES (33, 34759, 2, '10 rue Lautrec', 'PERON', 'Laurence', 'laurence.peron@univ-poitiers.fr');
INSERT INTO cg_participant VALUES (34, 4449, 11, '10 rue des grands champs', 'TEVENET', 'Lilou', 'lilou.tevenet@univ-aixmarseille.fr');
INSERT INTO cg_participant VALUES (35, 4469, 11, '27 bvd heurteloup', 'MARTIN', 'Laudine', 'laudine.martin@univ-aixmarseille.fr');


--
-- Data for Name: cg_pays; Type: TABLE DATA; Schema: public; Owner: postgres
--

INSERT INTO cg_pays VALUES (1, 'FRANCE');
INSERT INTO cg_pays VALUES (2, 'ESPAGNE');
INSERT INTO cg_pays VALUES (3, 'PORTUGAL');
INSERT INTO cg_pays VALUES (4, 'GRECE');
INSERT INTO cg_pays VALUES (5, 'ALLEMAGNE');
INSERT INTO cg_pays VALUES (6, 'AUTRICHE');
INSERT INTO cg_pays VALUES (7, 'SUISSE');
INSERT INTO cg_pays VALUES (8, 'PAYS-BAS');
INSERT INTO cg_pays VALUES (9, 'BELGIQUE');
INSERT INTO cg_pays VALUES (10, 'LUXEMBOURG');
INSERT INTO cg_pays VALUES (11, 'ITALIE');
INSERT INTO cg_pays VALUES (12, 'DANEMARK');
INSERT INTO cg_pays VALUES (13, 'SUEDE');
INSERT INTO cg_pays VALUES (14, 'NORVEGE');
INSERT INTO cg_pays VALUES (15, 'FINLANDE');
INSERT INTO cg_pays VALUES (16, 'RUSSIE');
INSERT INTO cg_pays VALUES (17, 'BIELORUSSIE');
INSERT INTO cg_pays VALUES (18, 'REPUBLIQUE TCHEQUE');
INSERT INTO cg_pays VALUES (19, 'POLOGNE');
INSERT INTO cg_pays VALUES (20, 'HONGRIE');
INSERT INTO cg_pays VALUES (21, 'ROUMANIE');
INSERT INTO cg_pays VALUES (22, 'SLOVAQUIE');
INSERT INTO cg_pays VALUES (23, 'CANADA');
INSERT INTO cg_pays VALUES (24, 'USA');
INSERT INTO cg_pays VALUES (25, 'MEXIQUE');
INSERT INTO cg_pays VALUES (26, 'CHILI');
INSERT INTO cg_pays VALUES (27, 'ARGENTINE');
INSERT INTO cg_pays VALUES (28, 'BOLIVIE');
INSERT INTO cg_pays VALUES (29, 'MAROC');
INSERT INTO cg_pays VALUES (30, 'ALGERIE');
INSERT INTO cg_pays VALUES (31, 'TUNISIE');
INSERT INTO cg_pays VALUES (32, 'COTE D INVOIRE');
INSERT INTO cg_pays VALUES (33, 'AFRIQUE DU SUD');
INSERT INTO cg_pays VALUES (34, 'MALI');
INSERT INTO cg_pays VALUES (35, 'EGYPTE');
INSERT INTO cg_pays VALUES (36, 'ISRAEL');
INSERT INTO cg_pays VALUES (37, 'PAKISTAN');
INSERT INTO cg_pays VALUES (38, 'YEMEN');
INSERT INTO cg_pays VALUES (39, 'ARABIE SAOUDITE');
INSERT INTO cg_pays VALUES (40, 'CHINE');
INSERT INTO cg_pays VALUES (41, 'INDE');
INSERT INTO cg_pays VALUES (42, 'TAIWAN');
INSERT INTO cg_pays VALUES (43, 'JAPON');
INSERT INTO cg_pays VALUES (44, 'COREE DU SUD');
INSERT INTO cg_pays VALUES (45, 'ANGOLA');


--
-- Data for Name: cg_personne; Type: TABLE DATA; Schema: public; Owner: postgres
--

INSERT INTO cg_personne VALUES (1, 'DURAND', 'Pierre', 'pierre.durand@univ-tours.fr');
INSERT INTO cg_personne VALUES (2, 'JEAN', 'Henri', 'jean.henru@univ-tours.fr');
INSERT INTO cg_personne VALUES (24, 'DUPONT', 'Anne', 'anne.dupont@univ-orleans.fr');
INSERT INTO cg_personne VALUES (25, 'SERES', 'Claire', 'seres.claire@univ-orleans.fr');
INSERT INTO cg_personne VALUES (26, 'MIRON', 'Kevin', 'miron.kevin@univ-orleans.fr');
INSERT INTO cg_personne VALUES (27, 'TIAN', 'Marc', 'tian.marc@univ-orleans.fr');
INSERT INTO cg_personne VALUES (28, 'PARIS', 'Frederic', 'paris.frederic@univ-orleans.fr');
INSERT INTO cg_personne VALUES (29, 'PEONCLE', 'Enrick', 'petoncle.enrick@univ-orleans.fr');
INSERT INTO cg_personne VALUES (30, 'ROSER', 'Louis', 'louis.roser@univ-poitiers.fr');
INSERT INTO cg_personne VALUES (31, 'VIGNER', 'Marie', 'marie.vigner@univ-poitiers.fr');
INSERT INTO cg_personne VALUES (32, 'RAPPE', 'Maxence', 'maxence.rappe@univ-poitiers.fr');
INSERT INTO cg_personne VALUES (33, 'PERON', 'Laurence', 'laurence.peron@univ-poitiers.fr');
INSERT INTO cg_personne VALUES (34, 'TEVENET', 'Lilou', 'lilou.tevenet@univ-aixmarseille.fr');
INSERT INTO cg_personne VALUES (35, 'MARTIN', 'Laudine', 'laudine.martin@univ-aixmarseille.fr');
INSERT INTO cg_personne VALUES (36, 'PLOUIC', 'Aurelien', 'plouic.aurelien@unil.fr');
INSERT INTO cg_personne VALUES (37, 'NERON', 'Emannuelle', 'emanuelle.neron@univ-aixmarseille.fr');
INSERT INTO cg_personne VALUES (38, 'NIRTA', 'Laure', 'laure.nitra@univ-poitiers.fr');
INSERT INTO cg_personne VALUES (39, 'MARAIS', 'Martin', 'martin.marais@univ-poitiers.fr');
INSERT INTO cg_personne VALUES (40, 'BARASS', 'Denis', 'denis.barass@univ-poitiers.fr');
INSERT INTO cg_personne VALUES (41, 'CARRE', 'Valerie', 'valerie.caree@unil.fr');
INSERT INTO cg_personne VALUES (42, 'AZERTY', 'Stephane', 'stephane.azerty@univ-tours.fr');
INSERT INTO cg_personne VALUES (43, 'LIRE', 'Servane', 'servane.lire@univ-orleans.fr');
INSERT INTO cg_personne VALUES (44, 'MESCLUN', 'Gilles', 'gilles.mesclun@univ-strasbourg.fr');

--
-- Data for Name: cg_theme; Type: TABLE DATA; Schema: public; Owner: postgres
--

INSERT INTO cg_theme VALUES (1, 'Reconnaissance des formes');
INSERT INTO cg_theme VALUES (2, 'Ordonnacement');
INSERT INTO cg_theme VALUES (3, 'Traitement du langage naturel');
INSERT INTO cg_theme VALUES (4, 'Fatigue des matériaux');
INSERT INTO cg_theme VALUES (5, 'Paléoprimatologie');
INSERT INTO cg_theme VALUES (6, 'Théorie quantique des champs');
INSERT INTO cg_theme VALUES (7, 'Gravitation');
INSERT INTO cg_theme VALUES (8, 'Alzeimer');
INSERT INTO cg_theme VALUES (9, 'Modèles de cellules souches malignes et thérapeuthiques');
INSERT INTO cg_theme VALUES (10, 'Vision par ordinateur');
INSERT INTO cg_theme VALUES (11, 'Analyse de documents');
INSERT INTO cg_theme VALUES (12, 'Traitement d''images');
INSERT INTO cg_theme VALUES (13, 'Traitement du signal');
INSERT INTO cg_theme VALUES (14, 'Sécurité informatique');
INSERT INTO cg_theme VALUES (15, 'Apprentissage automatique');
INSERT INTO cg_theme VALUES (16, 'Reconnaissance de la parole');
INSERT INTO cg_theme VALUES (17, 'Réseaux de neurones');
INSERT INTO cg_theme VALUES (18, 'Classification');
INSERT INTO cg_theme VALUES (19, 'Clustering');
INSERT INTO cg_theme VALUES (20, 'Fouille de données');
INSERT INTO cg_theme VALUES (21, 'Biométrie');
INSERT INTO cg_theme VALUES (22, 'Reconnaissance faciale');
INSERT INTO cg_theme VALUES (23, 'Evaluation des performances');


--
-- Data for Name: cg_type; Type: TABLE DATA; Schema: public; Owner: postgres
--

INSERT INTO cg_type VALUES (1, 'Court');
INSERT INTO cg_type VALUES (2, 'Long');
INSERT INTO cg_type VALUES (3, 'Résumé');
INSERT INTO cg_type VALUES (4, 'Poster');


--
-- Data for Name: cg_inscription; Type: TABLE DATA; Schema: public; Owner: postgres
--

INSERT INTO cg_inscription (congresid, inscriptionid, personneid, dateinscription, etat) VALUES (1,1,1,'2012-06-24','VALIDE');                          
INSERT INTO cg_inscription (congresid, inscriptionid, personneid, dateinscription, etat) VALUES (1,2,2,'2012-05-15','VALIDE');                          
INSERT INTO cg_inscription (congresid, inscriptionid, personneid, dateinscription, etat) VALUES (1,4,24,'2012-03-17','VALIDE');                          
INSERT INTO cg_inscription (congresid, inscriptionid, personneid, dateinscription, etat) VALUES (1,5,26,'2012-01-03','VALIDE');                          
INSERT INTO cg_inscription (congresid, inscriptionid, personneid, dateinscription, etat) VALUES (1,7,28,'2012-06-01','VALIDE');                          
INSERT INTO cg_inscription (congresid, inscriptionid, personneid, dateinscription, etat) VALUES (1,8,30,'2012-04-29','ANNULE');                          
INSERT INTO cg_inscription (congresid, inscriptionid, personneid, dateinscription, etat) VALUES (1,9,32,'2012-04-06','VALIDE');                          
INSERT INTO cg_inscription (congresid, inscriptionid, personneid, dateinscription, etat) VALUES (1,10,34,'2012-03-25','ANNULE');                          
INSERT INTO cg_inscription (congresid, inscriptionid, personneid, dateinscription, etat) VALUES (2,3,1,'2012-12-17','VALIDE');                          
INSERT INTO cg_inscription (congresid, inscriptionid, personneid, dateinscription, etat) VALUES (2,11,25,'2012-11-14','ANNULE');                          
INSERT INTO cg_inscription (congresid, inscriptionid, personneid, dateinscription, etat) VALUES (2,12,27,'2013-01-10','VALIDE');                          
INSERT INTO cg_inscription (congresid, inscriptionid, personneid, dateinscription, etat) VALUES (2,13,29,'2013-02-01','VALIDE');                          
INSERT INTO cg_inscription (congresid, inscriptionid, personneid, dateinscription, etat) VALUES (2,14,31,'2012-11-25','VALIDE');                          
INSERT INTO cg_inscription (congresid, inscriptionid, personneid, dateinscription, etat) VALUES (2,15,33,'2013-01-15','VALIDE');                          
INSERT INTO cg_inscription (congresid, inscriptionid, personneid, dateinscription, etat) VALUES (2,16,35,'2012-12-23','VALIDE');                          
INSERT INTO cg_inscription (congresid, inscriptionid, personneid, dateinscription, etat) VALUES (3,16,1,'2013-03-04','VALIDE');                          
INSERT INTO cg_inscription (congresid, inscriptionid, personneid, dateinscription, etat) VALUES (3,17,24,'2013-02-25','VALIDE');                          
INSERT INTO cg_inscription (congresid, inscriptionid, personneid, dateinscription, etat) VALUES (3,18,25,'2013-01-25','ANNULE');                          
INSERT INTO cg_inscription (congresid, inscriptionid, personneid, dateinscription, etat) VALUES (3,19,26,'2013-01-14','VALIDE');                          
INSERT INTO cg_inscription (congresid, inscriptionid, personneid, dateinscription, etat) VALUES (3,20,27,'2013-03-17','ANNULE');                          
INSERT INTO cg_inscription (congresid, inscriptionid, personneid, dateinscription, etat) VALUES (3,21,28,'2013-02-05','VALIDE');                          
INSERT INTO cg_inscription (congresid, inscriptionid, personneid, dateinscription, etat) VALUES (3,22,29,'2013-02-12','VALIDE');                          
INSERT INTO cg_inscription (congresid, inscriptionid, personneid, dateinscription, etat) VALUES (4,23,1,'2012-08-14','VALIDE');                          
INSERT INTO cg_inscription (congresid, inscriptionid, personneid, dateinscription, etat) VALUES (4,24,30,'2012-10-01','ANNULE');                          
INSERT INTO cg_inscription (congresid, inscriptionid, personneid, dateinscription, etat) VALUES (4,25,31,'2012-09-08','VALIDE');                          
INSERT INTO cg_inscription (congresid, inscriptionid, personneid, dateinscription, etat) VALUES (4,26,32,'2012-10-05','VALIDE');                          
INSERT INTO cg_inscription (congresid, inscriptionid, personneid, dateinscription, etat) VALUES (4,27,33,'2012-09-18','VALIDE');                          
INSERT INTO cg_inscription (congresid, inscriptionid, personneid, dateinscription, etat) VALUES (4,28,34,'2012-10-14','VALIDE');                          
INSERT INTO cg_inscription (congresid, inscriptionid, personneid, dateinscription, etat) VALUES (4,29,35,'2012-11-02','VALIDE');                         
INSERT INTO cg_inscription (congresid, inscriptionid, personneid, dateinscription, etat) VALUES (1,6,27,'2011-12-06','VALIDE');                          


--
-- Data for Name: cg_session; Type: TABLE DATA; Schema: public; Owner: postgres
--

INSERT INTO cg_session (nosession, congresid, articleid, personneid, datehrsession, duree) VALUES(1,1,1,27,'2012-07-01 08:00:00',60);
INSERT INTO cg_session (nosession, congresid, articleid, personneid, datehrsession, duree) VALUES(4,1,4,24,'2012-07-03 10:00:00',45);
INSERT INTO cg_session (nosession, congresid, articleid, personneid, datehrsession, duree) VALUES(2,1,2,27,'2012-07-02 08:00:00',100);
INSERT INTO cg_session (nosession, congresid, articleid, personneid, datehrsession, duree) VALUES(3,1,3,2,'2012-08-01 14:00:00',60);
INSERT INTO cg_session (nosession, congresid, articleid, personneid, datehrsession, duree) VALUES(5,2,5,33,'2013-02-27 08:00:00',90);
INSERT INTO cg_session (nosession, congresid, articleid, personneid, datehrsession, duree) VALUES(6,2,6,35,'2013-02-28 14:00:00',100);
INSERT INTO cg_session (nosession, congresid, articleid, personneid, datehrsession, duree) VALUES(7,2,6,31,'2013-02-27 10:00:00',45);
INSERT INTO cg_session (nosession, congresid, articleid, personneid, datehrsession, duree) VALUES(8,2,7,33,'2013-02-09 09:00:00',120);
INSERT INTO cg_session (nosession, congresid, articleid, personneid, datehrsession, duree) VALUES(9,2,7,35,'2013-02-28 14:00:00',60);

--
-- Data for Name: cg_assister; Type: TABLE DATA; Schema: public; Owner: postgres
--
INSERT INTO cg_assister (personneid, nosession) VALUES (1,1);
INSERT INTO cg_assister (personneid, nosession) VALUES (1,2);
INSERT INTO cg_assister (personneid, nosession) VALUES (1,3);
INSERT INTO cg_assister (personneid, nosession) VALUES (2,2);
INSERT INTO cg_assister (personneid, nosession) VALUES (2,3);
INSERT INTO cg_assister (personneid, nosession) VALUES (2,4);
INSERT INTO cg_assister (personneid, nosession) VALUES (24,1);
INSERT INTO cg_assister (personneid, nosession) VALUES (24,3);
INSERT INTO cg_assister (personneid, nosession) VALUES (24,4);
INSERT INTO cg_assister (personneid, nosession) VALUES (26,1);
INSERT INTO cg_assister (personneid, nosession) VALUES (26,2);
INSERT INTO cg_assister (personneid, nosession) VALUES (26,4);
INSERT INTO cg_assister (personneid, nosession) VALUES (27,1);
INSERT INTO cg_assister (personneid, nosession) VALUES (27,2);
INSERT INTO cg_assister (personneid, nosession) VALUES (27,3);
INSERT INTO cg_assister (personneid, nosession) VALUES (27,4);
INSERT INTO cg_assister (personneid, nosession) VALUES (28,2);
INSERT INTO cg_assister (personneid, nosession) VALUES (28,4);
INSERT INTO cg_assister (personneid, nosession) VALUES (1,5);
INSERT INTO cg_assister (personneid, nosession) VALUES (1,6);
INSERT INTO cg_assister (personneid, nosession) VALUES (1,8);
INSERT INTO cg_assister (personneid, nosession) VALUES (25,5);
INSERT INTO cg_assister (personneid, nosession) VALUES (25,7);
INSERT INTO cg_assister (personneid, nosession) VALUES (25,9);
INSERT INTO cg_assister (personneid, nosession) VALUES (27,7);
INSERT INTO cg_assister (personneid, nosession) VALUES (27,9);
INSERT INTO cg_assister (personneid, nosession) VALUES (29,5);
INSERT INTO cg_assister (personneid, nosession) VALUES (29,6);
INSERT INTO cg_assister (personneid, nosession) VALUES (29,9);
INSERT INTO cg_assister (personneid, nosession) VALUES (31,5);
INSERT INTO cg_assister (personneid, nosession) VALUES (31,7);
INSERT INTO cg_assister (personneid, nosession) VALUES (33,5);
INSERT INTO cg_assister (personneid, nosession) VALUES (33,6);
INSERT INTO cg_assister (personneid, nosession) VALUES (33,8);
INSERT INTO cg_assister (personneid, nosession) VALUES (35,6);
INSERT INTO cg_assister (personneid, nosession) VALUES (35,9);

--
-- Data for Name: cg_presenter; Type: TABLE DATA; Schema: public; Owner: postgres
--
INSERT INTO cg_presenter (personneid, nosession) VALUES(24,1);
INSERT INTO cg_presenter (personneid, nosession) VALUES(27,1);
INSERT INTO cg_presenter (personneid, nosession) VALUES(27,2);
INSERT INTO cg_presenter (personneid, nosession) VALUES(1,3);
INSERT INTO cg_presenter (personneid, nosession) VALUES(2,3);
INSERT INTO cg_presenter (personneid, nosession) VALUES(24,4);
INSERT INTO cg_presenter (personneid, nosession) VALUES(27,4);
INSERT INTO cg_presenter (personneid, nosession) VALUES(1,5);
INSERT INTO cg_presenter (personneid, nosession) VALUES(33,5);
INSERT INTO cg_presenter (personneid, nosession) VALUES(33,6);
INSERT INTO cg_presenter (personneid, nosession) VALUES(35,6);
INSERT INTO cg_presenter (personneid, nosession) VALUES(31,7);
INSERT INTO cg_presenter (personneid, nosession) VALUES(33,8);
INSERT INTO cg_presenter (personneid, nosession) VALUES(35,9);

--
-- Data for Name: cg_rediger; Type: TABLE DATA; Schema: public; Owner: postgres
--
INSERT INTO cg_rediger (personneid, articleid) VALUES (36,1);
INSERT INTO cg_rediger (personneid, articleid) VALUES (37,2);
INSERT INTO cg_rediger (personneid, articleid) VALUES (38,2);
INSERT INTO cg_rediger (personneid, articleid) VALUES (39,3);
INSERT INTO cg_rediger (personneid, articleid) VALUES (40,4);
INSERT INTO cg_rediger (personneid, articleid) VALUES (41,5);
INSERT INTO cg_rediger (personneid, articleid) VALUES (42,5);
INSERT INTO cg_rediger (personneid, articleid) VALUES (43,6);
INSERT INTO cg_rediger (personneid, articleid) VALUES (44,7);
INSERT INTO cg_rediger (personneid, articleid) VALUES (36,8);
INSERT INTO cg_rediger (personneid, articleid) VALUES (40,8);
INSERT INTO cg_rediger (personneid, articleid) VALUES (41,8);
INSERT INTO cg_rediger (personneid, articleid) VALUES (37,9);
INSERT INTO cg_rediger (personneid, articleid) VALUES (38,10);
INSERT INTO cg_rediger (personneid, articleid) VALUES (41,10);

