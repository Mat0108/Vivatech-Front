import 'package:flutter/material.dart';
import 'package:vivatech/screens/games.dart';
import '../components/background.dart';
import '../components/topNavigation.dart';
import '../models/answer_model.dart';
import '../models/question_model.dart';

class QuizScreen extends StatefulWidget {
  const QuizScreen({super.key});

  @override
  State<QuizScreen> createState() => _QuizScreenState();
}

class _QuizScreenState extends State<QuizScreen> {
  List<Question> questionList = getQuestion();
  int currentQuestionIndex = 0;
  int score = 0;
  Answer? selectedAnswer;
  bool showCustomColumn = false;

  @override
  Widget build(BuildContext context) {
    return BackgroundComponent(
        content: Column(children: [
      TopNavigationComponent(
          currentPage: "quiz",
          content: Container(
              width: MediaQuery.of(context).size.width,
              decoration: const BoxDecoration(
                color: Color.fromRGBO(0, 0, 0, 0.7),
              ),
              child: Container(
                margin: const EdgeInsets.symmetric(horizontal: 20),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    _questionWidget(),
                    _answerList(),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        _nextButton(),
                        _quitButton(),
                      ],
                    ),
                  ],
                ),
              ))),
    ]));
  }

  _questionWidget() {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Center(
          child: Container(
            margin: const EdgeInsets.only(top: 20), // Add margin top here
            child: Text(
              "Question ${currentQuestionIndex + 1}/${questionList.length.toString()}"
                  .toUpperCase(),
              style: const TextStyle(
                color: Colors.white,
                fontSize: 20,
                fontWeight: FontWeight.w900,
              ),
            ),
          ),
        ),
        const SizedBox(
          height: 20,
        ),
        Container(
          alignment: Alignment.center,
          width: double.infinity,
          padding: const EdgeInsets.all(32),
          decoration: BoxDecoration(
            color: Colors.pink,
            borderRadius: BorderRadius.circular(16),
          ),
          child: Text(
            questionList[currentQuestionIndex].questionText,
            style: const TextStyle(
                color: Colors.white, fontSize: 18, fontWeight: FontWeight.w700),
          ),
        )
      ],
    );
  }

  _answerList() {
    return Column(
      children: questionList[currentQuestionIndex]
          .answersList
          .map((e) => _answerButton(e))
          .toList(),
    );
  }

  Widget _answerButton(Answer answer) {
    bool isSelected = answer == selectedAnswer;
    return Container(
      width: MediaQuery.of(context).size.width * 0.75,
      margin: const EdgeInsets.symmetric(vertical: 20),
      height: 48,
      child: ElevatedButton(
        child: Text(answer.answerText),
        style: ElevatedButton.styleFrom(
            shape: const StadiumBorder(),
            primary: isSelected ? Colors.lightGreenAccent : Colors.purple,
            onPrimary: isSelected ? Colors.black : Colors.white),
        onPressed: () {
          if (selectedAnswer == null) {
            if (answer.isCorrect) {
              score++;
            }
          }
          setState(() {
            selectedAnswer = answer;
          });
        },
      ),
    );
  }

  _nextButton() {
    bool isLastQuestion = false;
    if (currentQuestionIndex == questionList.length - 1) {
      isLastQuestion = true;
    }

    return Container(
      width: MediaQuery.of(context).size.width * 0.35,
      margin: const EdgeInsets.symmetric(vertical: 20),
      height: 48,
      child: ElevatedButton(
        child: Text(
          isLastQuestion ? "Valider" : "Ensuite",
          style: const TextStyle(fontWeight: FontWeight.w600),
        ),
        style: ElevatedButton.styleFrom(
            shape: const StadiumBorder(),
            primary: Colors.pink,
            onPrimary: Colors.white),
        onPressed: () {
          if (isLastQuestion) {
            if (score > 8) {
              /*Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => VictoryPage(score)),
              );*/
            } else {
              /* Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => DefeatPage(score)),
              );*/
            }
          } else {
            setState(() {
              selectedAnswer = null;
              currentQuestionIndex++;
            });
          }
        },
      ),
    );
  }

  _quitButton() {
    return Container(
      width: MediaQuery.of(context).size.width * 0.35,
      margin: const EdgeInsets.symmetric(vertical: 20),
      height: 48,
      child: ElevatedButton(
          child: Text(
            "Quitter",
            style: TextStyle(fontWeight: FontWeight.w600),
          ),
          style: ElevatedButton.styleFrom(
              shape: const StadiumBorder(),
              primary: Colors.pink,
              onPrimary: Colors.white),
          onPressed: () {
            _showCustomColumn();
          }),
    );
  }

  void _showCustomColumn() {
    showDialog(
      context: context,
      builder: (BuildContext context) {
        bool showConfirmation = true;

        return StatefulBuilder(
          builder: (BuildContext context, setState) {
            return AlertDialog(
              backgroundColor: Colors.transparent,
              content: Column(
                children: [
                  Padding(
                    padding: const EdgeInsets.fromLTRB(0, 100, 0, 0),
                    child: Stack(
                      children: <Widget>[
                        Container(
                          alignment: Alignment.topRight,
                          child: Image.asset(
                            "assets/pages/games/bubble-chat.png",
                            width: 400,
                            height: 300,
                          ),
                        ),
                        Container(
                          alignment: Alignment.topCenter,
                          padding: const EdgeInsets.fromLTRB(50, 50, 80, 60),
                          child: Text(
                            showConfirmation
                                ? "Votre progression ne sera pas sauvegardée. Êtes-vous sûr de vouloir quitter le jeu ?"
                                : "D’accord, à la prochaine fois !",
                            textAlign: TextAlign.justify,
                            style: const TextStyle(
                              color: Colors.black,
                              fontSize: 15.5,
                              fontWeight: FontWeight.w900,
                            ),
                          ),
                        ),
                        if (showConfirmation)
                          Positioned(
                            top: 160,
                            right: 80,
                            child: Row(
                              mainAxisSize: MainAxisSize.min,
                              children: [
                                GestureDetector(
                                  child: Container(
                                    width: 30,
                                    height: 30,
                                    alignment: Alignment.topRight,
                                    child: Image.asset(
                                      "assets/pages/games/next.png",
                                    ),
                                  ),
                                  onTap: () {
                                    setState(() {
                                      showConfirmation = false;
                                    });
                                    Future.delayed(const Duration(seconds: 3),
                                        () {
                                      Navigator.pushReplacement(
                                        context,
                                        MaterialPageRoute(
                                          builder: (context) => Games(),
                                        ),
                                      );
                                    });
                                  },
                                ),
                                const SizedBox(width: 4),
                                const Text(
                                  'Oui',
                                  style: TextStyle(color: Colors.black),
                                ),
                              ],
                            ),
                          ),
                        if (showConfirmation)
                          Positioned(
                            top: 160,
                            right: 160,
                            child: Row(
                              mainAxisSize: MainAxisSize.min,
                              children: [
                                GestureDetector(
                                  child: Container(
                                    width: 30,
                                    height: 30,
                                    alignment: Alignment.topRight,
                                    child: Image.asset(
                                      "assets/pages/games/next.png",
                                    ),
                                  ),
                                  onTap: () {
                                    setState(() {
                                      showConfirmation = false;
                                    });
                                    Navigator.of(context).pop();
                                  },
                                ),
                                const SizedBox(width: 4),
                                const Text(
                                  'Non',
                                  style: TextStyle(color: Colors.black),
                                ),
                              ],
                            ),
                          ),
                      ],
                    ),
                  ),
                  Container(
                    padding: const EdgeInsets.fromLTRB(0, 0, 0, 0),
                    alignment: Alignment.centerLeft,
                    child: Image.asset(
                      "assets/pages/games/characters/nihel.png",
                      width: 180,
                      height: 180,
                    ),
                  ),
                ],
              ),
            );
          },
        );
      },
    );
  }
}
