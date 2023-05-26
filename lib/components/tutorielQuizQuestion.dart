import 'package:flutter/material.dart';

class TutorialQuizWidget extends StatelessWidget {
  final String questionText;
  final List<String> answerOptions;

  const TutorialQuizWidget({
    Key? key,
    required this.questionText,
    required this.answerOptions,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        _questionWidget(),
        _answerList(context),
        _nextButton(context),
      ],
    );
  }

  Widget _questionWidget() {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        const Center(
          child: Text(
            "Question 1/10",
            style: TextStyle(
              color: Colors.white,
              fontSize: 20,
              fontWeight: FontWeight.w900,
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
            questionText,
            style: const TextStyle(
              color: Colors.white,
              fontSize: 18,
              fontWeight: FontWeight.w700,
            ),
          ),
        ),
      ],
    );
  }

  Widget _answerList(BuildContext context) {
    return Column(
      children: answerOptions
          .map((option) => _answerButton(context, option))
          .toList(),
    );
  }

  Widget _answerButton(BuildContext context, String answerOption) {
    return Container(
      width: MediaQuery.of(context).size.width * 0.75,
      margin: const EdgeInsets.symmetric(vertical: 20),
      height: 48,
      child: ElevatedButton(
        child: Text(answerOption),
        style: ElevatedButton.styleFrom(
          shape: const StadiumBorder(),
          primary: Colors.purple,
          onPrimary: Colors.white,
        ),
        onPressed: () {},
      ),
    );
  }

  Widget _nextButton(BuildContext context) {
    return Container(
      width: MediaQuery.of(context).size.width * 0.5,
      margin: const EdgeInsets.symmetric(vertical: 20),
      height: 48,
      child: ElevatedButton(
        child: Text(
          "Suivant",
          style: const TextStyle(fontWeight: FontWeight.w600),
        ),
        style: ElevatedButton.styleFrom(
          shape: const StadiumBorder(),
          primary: Colors.pink,
          onPrimary: Colors.white,
        ),
        onPressed: () {},
      ),
    );
  }
}
