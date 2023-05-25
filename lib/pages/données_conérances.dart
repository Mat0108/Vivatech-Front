import 'dart:convert';

import '../models/conference.dart';

////////////conf1IA////////////////////

// Instanciation des présentateurs
Presenter presenter1 = Presenter("Quentin Clark", 'assets/conference/IA/Quentin_Clark.png');
Presenter presenter2 = Presenter("Joelle Pineau", 'assets/conference/IA/Joelle_Pineau.png');
Presenter presenter3 = Presenter("Jonas Andrulis", 'assets/conference/IA/Jonas_Andrulis.png');
Presenter presenter4 = Presenter("Charlie Beckett", 'assets/conference/IA/Charlie_Beckett.png');
Presenter presenter5 = Presenter("Gina Neff", 'assets/conference/IA/Gina_Neff.png');
Presenter presenter6 = Presenter("François-Xavier Pierrel", 'assets/conference/IA/François_Xavier_Pierrel.png');
Presenter presenter7 = Presenter("Hanel Baveja", 'assets/conference/IA/Hanel_Baveja.png');
Presenter presenter8 = Presenter("Carolina Bessega ", 'assets/conference/IA/Carolina_Bessega.png');
Presenter presenter9 = Presenter("Bertrand Pailhès", 'assets/conference/IA/Bertrand_Pailhès.png');
Presenter presenter10 = Presenter("Jennifer L. Schenker", 'assets/conference/IA/Jennifer_L. Schenker.png');
Presenter presenter11= Presenter("Françoise Soulié-Fogelman", 'assets/conference/IA/Françoise_Soulié-Fogelman.png');
Presenter presenter12= Presenter("Tobias Hann", 'assets/conference/IA/Tobias_Hann.png');
Presenter presenter14= Presenter("Kay Firth-Butterfield", 'assets/conference/IA/Kay_Firth-Butterfield.png');
Presenter presenter15 = Presenter("Renaud Allioux", 'assets/conference/IA/Renaud_Allioux.png');
Presenter presenter16 = Presenter("Grégory FLORIN", 'assets/conference/IA/Grégory_FLORIN.jpg');
Presenter presenter17 = Presenter("Arnaud LAUGA", 'assets/conference/IA/Arnaud_LAUGA.jpg');



// Création des sessions pour chaque jour
Session session1 = Session("14:00 - 14:25", [presenter1, presenter2], "Tendances IA: du laboratoire au marché");
Session session2 = Session("15:20 - 16:05", [presenter3,presenter4,presenter5,presenter6], "(Quand) l'IA générative prendra-t-elle le relais de votre travail ?");
Session session3 = Session("15:40 - 16:25", [presenter7,presenter8,presenter9,presenter10,presenter11], "Ubiquité de l'IA: le bon, le mauvais et le truand");
Session session4 = Session("16:10 - 16:25", [presenter12], "Données synthétiques: trop belles pour être vraies?");
Session session5 = Session("16:30 - 17:05", [presenter10, presenter14,presenter15], "Whodunnit: IA, éthique et responsabilité");
Session session6 = Session("12:30 - 13:00", [presenter16,presenter17], "Performics Vortex - Innovation SEO");


// Création des jours avec leurs titres et sessions
Day day1 = Day("Mercredi 14", [session1, session2,session3,session4,session5]);
Day day2 = Day("Vendredi 16", [session6]);


// Création de l'objet Conference avec le programme complet
Conference conferenceIA = Conference(
  "AI ",
  [day1, day2],
);



/////////////FoodTech//////////////

// Instanciation des présentateurs
Presenter presenter18 = Presenter("Roxanne Crossley", 'assets/conference/FoodTech/Roxanne Crossley.png');
Presenter presenter19= Presenter("Tina Halborg", 'assets/conference/FoodTech/Tina Halborg.png');
Presenter presenter20 = Presenter("Isabel Fernandez", 'assets/conference/FoodTech/Isabel Fernandez.png');
Presenter presenter21 = Presenter("Isabella Iglesias-Musachio", 'assets/conference/FoodTech/Isabella Iglesias-Musachio.png');
Presenter presenter22 = Presenter("Isabelle Toledano-Koutsouris", 'assets/conference/FoodTech/Isabelle Toledano-Koutsouris.png');
Presenter presenter23 = Presenter("Didier Toubia", 'assets/conference/FoodTech/Didier Toubia.png');
Presenter presenter24= Presenter("Patrick Hennig", 'assets/conference/FoodTech/Patrick Hennig.png');
Presenter presenter25= Presenter("Anton Soulier ", 'assets/conference/FoodTech/Anton Soulier.png');
Presenter presenter26= Presenter("Thiemo van Spellen", 'assets/conference/FoodTech/Thiemo van Spellen.png');
Presenter presenter27 = Presenter("Grégoire Carlier", 'assets/conference/FoodTech/Grégoire Carlier.png');
Presenter presenter28= Presenter("Fabien Gastou", 'assets/conference/FoodTech/Fabien Gastou.png');
Presenter presenter29= Presenter("Anaïs Maury", 'assets/conference/FoodTech/Anaïs Maury.png');



// Création des sessions pour chaque jour
Session session7 = Session("10:00 - 10:45", [presenter18, presenter19], "Nourriture: du gaspillage à l'opportunité");
Session session8 = Session("10:50 - 11:35", [presenter20,presenter21,presenter22,presenter23], "Goûter l'avenir: diversifier les sources de protéines");
Session session9 = Session("11:40 - 12:15", [presenter24,presenter25,presenter26], "FoodTechRéinventer les restaurants: de la commande à la livraison");
Session session11= Session("11:30 - 12:05", [presenter27, presenter28], "Zéro gaspi : du déchet à l'opportunité");
Session session12= Session("12:10 - 12:45", [presenter29], "FoodTech Une bouchée du futur : que mangerons-nous demain ?");


// Création des jours avec leurs titres et sessions
Day day1_ = Day("Jeudi 15", [session7, session8,session9]);
Day day2_= Day("Samedi 17", [session11,session12]);


// Création de l'objet Conference avec le programme complet
Conference conferenceFoodTech = Conference(
  "FoodTech ",
  [day1_, day2_],
);


/////////////DeepTech //////////////


// Instanciation des présentateurs
Presenter presenter30 = Presenter("Anne-Sophie CARRESE", 'assets/conference/DeepTech/Anne-Sophie CARRESE.png');
Presenter presenter31= Presenter("Dr. Ramses Alcaide", 'assets/conference/DeepTech/Dr. Ramses Alcaide.png');
Presenter presenter32 = Presenter("Bill Liao", 'assets/conference/DeepTech/Bill Liao.png');
Presenter presenter33 = Presenter("Gabriela Ramos", 'assets/conference/DeepTech/Gabriela Ramos.png');
Presenter presenter34 = Presenter("Françoise Baylis", 'assets/conference/DeepTech/Françoise Baylis.png');
Presenter presenter35 = Presenter("Pierre Côte", 'assets/conference/DeepTech/Pierre Côte.png');
Presenter presenter36= Presenter("Catherine Feuillet ", 'assets/conference/DeepTech/Catherine Feuillet.png');
Presenter presenter37= Presenter("Boris LANGLOIS ", 'assets/conference/DeepTech/Françoise Baylis.png');
Presenter presenter38= Presenter("Séverine NUBEL", 'assets/conference/DeepTech/Séverine NUBEL.png');



// Création des sessions pour chaque jour
Session session13 = Session("10:00 - 10:15", [presenter30], "Tendances (in)attendues: plonger dans la Deeptech");
Session session14= Session("10:45 - 11:20", [presenter31,presenter32,presenter33], "Future Living: Éthique et opportunités du biohacking");
Session session15= Session("11:25 - 12:00", [presenter34,presenter35,presenter36], "Copier, coller: que peut (et doit) faire l'édition de gènes?");

Session session16= Session("11:30 - 12:00", [presenter37, presenter38], "Orange - Zone sécurisée");



// Création des jours avec leurs titres et sessions
Day day_ = Day("Jeudi 15", [session13, session14,session15]);
Day day12_= Day("Samedi 17", [session16]);


// Création de l'objet Conference avec le programme complet
Conference conferenceDeepTech = Conference(
  "DeepTech ",
  [day_, day12_],
);


/////////////Cybersecurity//////////////

// Instanciation des présentateurs
Presenter presenter39 = Presenter("William Xiong", 'assets/conference/Cybersecurity/Philippe Botteri.png');
Presenter presenter40= Presenter("Philippe Botteri", 'assets/conference/Cybersecurity/Philippe Botteri.png');
Presenter presenter41 = Presenter("Christina Cacioppo", 'assets/conference/Cybersecurity/Christina Cacioppo.png');
Presenter presenter42 = Presenter("Solange Viegas Dos Reis", 'assets/conference/Cybersecurity/Solange Viegas Dos Reis.png');
Presenter presenter43 = Presenter("Guy-Philippe Goldstein", 'assets/conference/Cybersecurity/Guy-Philippe Goldstein.png');
Presenter presenter44 = Presenter("Andres Sutt", 'assets/conference/Cybersecurity/Andres Sutt.png');
Presenter presenter45= Presenter("Mitchell Amador ", 'assets/conference/Cybersecurity/Mitchell Amador.png');
Presenter presenter46= Presenter("Eleanor Fairford ", 'assets/conference/Cybersecurity/Eleanor Fairford.png');
Presenter presenter47= Presenter("Paula Januszkiewicz", 'assets/conference/Cybersecurity/Paula Januszkiewicz.png');
Presenter presenter48= Presenter("Marieke Flament", 'assets/conference/Cybersecurity/Marieke Flament.png');
Presenter presenter49= Presenter("Pascal Gauthier", 'assets/conference/Cybersecurity/Pascal Gauthier.png');
Presenter presenter50= Presenter("Vladimir Tsaganov", 'assets/conference/Cybersecurity/Andres Sutt.png');



// Création des sessions pour chaque jour
Session session17 = Session("16:00 - 16:30", [presenter39], "Alibaba Digital Innovation pour la durabilité");
Session session18= Session("14:50 - 15:25", [presenter40,presenter41,presenter42], "Tendances en matière de cybersécurité: la sécurité dans le cloud");
Session session19= Session("15:30 - 15:50", [presenter43,presenter44], "Cyber-résilience : Bâtir des sociétés sûres");
Session session20= Session("15:55 - 16:55", [presenter45, presenter46,presenter47], "Économie de la cybercriminalité: comprendre les chiffres");
Session session21= Session("10:55 - 10:35", [presenter45,presenter48,presenter49], "La crypto est-elle toujours digne de confiance");
Session session22= Session("16:00 - 16:30", [presenter50], "Autonomiser la transformation de la vente au détail: expérience de Double11 et meilleures pratiques");




// Création des jours avec leurs titres et sessions
Day day1_Cybersecurity = Day("Mercredi 14", [session17]);
Day day2_Cybersecurity= Day("Jeudi 15", [session18,session19,session20]);
Day day3_Cybersecurity= Day("Vendredi 16", [session21,session22]);


// Création de l'objet Conference avec le programme complet
Conference conferenceCybersecurity = Conference(
  "La cyber-sécurité ",
  [day1_Cybersecurity, day2_Cybersecurity,day3_Cybersecurity],
);


////////////Creator's Economy, Gaming & Metaverse///////////


// Instanciation des présentateurs
Presenter presenter51 = Presenter("Bruno BRITSCH", 'assets/conference/Metaverse/Brandon Millman.png');
Presenter presenter52= Presenter("Timo Gross", 'assets/conference/Metaverse/Timo Gross.png');
Presenter presenter53 = Presenter("Arnaud Santin", 'assets/conference/Metaverse/Arnaud Santin.png');
Presenter presenter54 = Presenter("Dimitri Carbonnelle", 'assets/conference/Metaverse/Dimitri Carbonnelle.png');
Presenter presenter55 = Presenter("Tim Gould", 'assets/conference/Metaverse/Tim Gould.png');
Presenter presenter56 = Presenter("Ann Mettler", 'assets/conference/Metaverse/Ann Mettler.png');
Presenter presenter57= Presenter("Loïck Peyron ", 'assets/conference/Metaverse/Loïck Peyron.png');
Presenter presenter58= Presenter("Alex Thomson", 'assets/conference/Metaverse/Alex Thomson.png');
Presenter presenter59= Presenter("Arianna Simpson", 'assets/conference/Metaverse/Arianna Simpson.png');
Presenter presenter60= Presenter("Brandon Millman", 'assets/conference/Metaverse/Brandon Millman.png');
Presenter presenter61= Presenter("Catherine Chabaud", 'assets/conference/Metaverse/Catherine Chabaud.png');
Presenter presenter62= Presenter("Marc Van Peteghem", 'assets/conference/Metaverse/Marc Van Peteghem.png');
Presenter presenter63= Presenter("Grégoire Carlier", 'assets/conference/Metaverse/Grégoire Carlier.png');
Presenter presenter64= Presenter("Fabien Gastou", 'assets/conference/Metaverse/Fabien Gastou.png');
Presenter presenter65= Presenter("Patrick Aufort", 'assets/conference/Metaverse/Patrick Aufort.png');
Presenter presenter66= Presenter("Claire Pétreault", 'assets/conference/Metaverse/Claire Pétreault.png');
Presenter presenter67= Presenter("Sophie Viger", 'assets/conference/Metaverse/Sophie Viger.png');
Presenter presenter68= Presenter("Thomas fonde Widoobiz", 'assets/conference/Metaverse/Thomas fonde Widoobiz.png');
Presenter presenter69= Presenter("Caroline Ramade", 'assets/conference/Metaverse/Caroline Ramade.png');



// Création des sessions pour chaque jour
Session session23 = Session("12:00 - 12:30", [presenter51], "La nouvelle économie de propriété du Web3 et la redéfinition des programmes CRM");
Session session24= Session("10:45 - 11:15", [presenter52,presenter53], "Performance sportive : utiliser les données pour gagner");
Session session25= Session("10:00 - 10:45", [presenter54,presenter55,presenter56], "L'énergie de l'Europe: de la crise au catalyseur");
Session session26= Session("10:30 - 11:00", [presenter57, presenter58], "La dernière technologie de voile rendra-t-elle les skippers obsolètes ?");
Session session27= Session("10:40 - 11:05", [presenter59,presenter60], "Le Web3 deviendra-t-il grand public?");
Session session28= Session("11:00 - 11:30", [presenter61,presenter62], "La voile peut-elle vraiment soutenir la durabilité ?");
Session session29= Session("11:30 - 12:05", [presenter63,presenter64], "Zéro gaspi : du déchet à l'opportunité");
Session session30= Session("12:15 - 13:00", [presenter65,presenter66,presenter67], "Tech to Watch : Les métiers d'avenir (et comment s'y préparer)");
Session session31= Session("14:00 - 14:20", [presenter68,presenter69], "De la Start-up Nation à l'Impact Nation ?");




// Création des jours avec leurs titres et sessions
Day day1_Metaverse = Day("Mercredi 14", [session23,session24,session25]);
Day day2_Metaverse= Day("Vendredi 16", [session26,session27,session28]);
Day day3_Metaverse= Day("Samedi 17", [session29,session30,session31]);


// Création de l'objet Conference avec le programme complet
Conference conferenceMetaverse = Conference(
  "Économie, jeux et métaverse ",
  [day1_Metaverse, day2_Metaverse,day3_Metaverse],
);

