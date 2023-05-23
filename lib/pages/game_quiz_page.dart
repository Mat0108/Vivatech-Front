import 'package:flutter/material.dart';
import 'package:front/pages/victory_quiz_page.dart';

import '../components/background.dart';
import '../components/topNavigation.dart';
import '../models/answer_model.dart';
import '../models/question_model.dart';
import 'defeat_quiz_page.dart';

class QuizScreen extends StatefulWidget {
  @override
  State<QuizScreen> createState() => _QuizScreenState();
}

class _QuizScreenState extends State<QuizScreen> {
  List<Question> questionList = getQuestion();
  int currentQuestionIndex = 0;
  int score = 0;
  Answer? selectedAnswer;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: BackgroundComponent(
            content: Column(children: [
      TopNavigationComponent(currentPage: "quiz"),
      Container(
        width: MediaQuery.of(context).size.width,
        decoration: BoxDecoration(
          color: Color.fromRGBO(0, 0, 0, 0.7),
        ),
        child: Container(
          margin: EdgeInsets.symmetric(horizontal: 20),
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
        )
      )
    ])));
  }

  _questionWidget() {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Center(
          child: Container(
            margin: EdgeInsets.only(top: 20), // Add margin top here
            child: Text(
              "Question ${currentQuestionIndex + 1}/${questionList.length.toString()}"
                  .toUpperCase(),
              style: TextStyle(
                color: Colors.white,
                fontSize: 20,
                fontWeight: FontWeight.w900,
              ),
            ),
          ),
        ),
        SizedBox(
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
            style: TextStyle(
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
      margin: EdgeInsets.symmetric(vertical: 20),
      height: 48,
      child: ElevatedButton(
        child: Text(answer.answerText),
        style: ElevatedButton.styleFrom(
            shape: StadiumBorder(),
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
      margin: EdgeInsets.symmetric(vertical: 20),
      height: 48,
      child: ElevatedButton(
        child: Text(
          isLastQuestion ? "Valider" : "Ensuite",
          style: TextStyle(fontWeight: FontWeight.w600),
        ),
        style: ElevatedButton.styleFrom(
            shape: StadiumBorder(),
            primary: Colors.pink,
            onPrimary: Colors.white),
        onPressed: () {
          if (isLastQuestion) {
            if (score > 8) {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => VictoryPage(score)),
              );
            } else {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => DefeatPage(score)),
              );
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
      margin: EdgeInsets.symmetric(vertical: 20),
      height: 48,
      child: ElevatedButton(
          child: Text(
            "Quitter",
            style: TextStyle(fontWeight: FontWeight.w600),
          ),
          style: ElevatedButton.styleFrom(
              shape: StadiumBorder(),
              primary: Colors.pink,
              onPrimary: Colors.white),
          onPressed: () {}),
    );
  }
}
