import 'answer_model.dart';

class Question {
  final String questionText;
  final List<Answer> answersList;

  Question(this.questionText, this.answersList);
}

List<Question> getQuestion() {
  List<Question> list = [];
  list.add(Question(
      "Quelle entreprise est connue pour ses logiciels de gestion des performances et de l'expérience utilisateur mobile ?",
      [
        Answer("Accuver", true),
        Answer("Agora Sofwere", false),
        Answer("Alibaba", false)
      ]));
  list.add(Question(
      "Quelle société est spécialisée dans le développement de solutions logicielles pour les villes intelligentes ? ",
      [
        Answer("Accuver", false),
        Answer("Agora Sofwere", true),
        Answer("Alibaba", false)
      ]));
  list.add(Question(
      "Quel géant de la technologie chinois est principalement connu pour ses activités dans le commerce électronique ?",
      [
        Answer("Accuver", false),
        Answer("Agora Sofwere", false),
        Answer("Alibaba", true)
      ]));
  list.add(Question(
      "Quelle marque automobile est réputée pour sa technologie avancée, y compris la conduite autonome ?",
      [
        Answer("Audi", true),
        Answer("Amazon ", false),
        Answer("Gapgemini", false)
      ]));
  list.add(Question(
      "Quelle entreprise de commerce électronique est également connue pour son assistant virtuel Alexa et ses enceintes connectées ?",
      [
        Answer("Audi", false),
        Answer("Amazon ", true),
        Answer("Gapgemini", false)
      ]));
  list.add(Question(
      "Quelle société de conseil est spécialisée dans les services numériques et l'innovation technologique ?",
      [
        Answer("Audi", false),
        Answer("Amazon ", false),
        Answer("Gapgemini", true)
      ]));
  list.add(Question(
      "Quelle banque française est impliquée dans le financement de nombreux projets technologiques et start-ups ?",
      [
        Answer("Gapgemini", false),
        Answer("BNP Paribas ", true),
        Answer("Enedis", false)
      ]));
  list.add(Question(
      "Quel est le nom du gestionnaire du réseau de distribution d'électricité en France ?",
      [
        Answer("BNP Paribas", false),
        Answer("Enedis", true),
        Answer("SNCF", false)
      ]));
  list.add(Question(
      "Quelle entreprise de transport est responsable de l'exploitation du réseau ferroviaire français ?",
      [
        Answer("Enedis", false),
        Answer(" Accuver", false),
        Answer("SNCF", true)
      ]));
  list.add(Question(
      "Quelle marque de vêtements est connue pour son engagement envers la durabilité et la responsabilité sociale ?",
      [
        Answer("Gapgemini", true),
        Answer("BNP Paribas", false),
        Answer("Gap", false)
      ]));
 
  return list;
}
