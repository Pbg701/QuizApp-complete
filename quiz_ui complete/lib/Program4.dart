// ignore: file_names
import 'package:flutter/material.dart';

class Program4 extends StatefulWidget {
  const Program4({super.key});

  @override
  State createState() => _Program4();
}

class Singlequestionformat {
  final String? questions;
  final List<String>? options;
  final int? answer;

  const Singlequestionformat({this.questions, this.answer, this.options});
}

class _Program4 extends State {
  bool questionScreen = true;
  int questionIndex = 0;
  int selectedAnswerindex = -1;
  int score = 0;

  MaterialStateProperty<Color?> isanswercorrect(int selectedindex) {
    if (selectedAnswerindex != -1) {
      if (selectedindex == questions[questionIndex].answer) {
        return const MaterialStatePropertyAll(Colors.green);
      } else if (selectedindex == selectedAnswerindex) {
        return const MaterialStatePropertyAll(Colors.red);
      } else {
        return const MaterialStatePropertyAll(null);
      }
    } else {
      return const MaterialStatePropertyAll(null);
    }
  }

  void checkpageisvalide() {
    if (selectedAnswerindex == -1) {
      return;
    }
    if (selectedAnswerindex == questions[questionIndex].answer) {
      score++;
    }
    if (selectedAnswerindex != -1) {
      if (questionIndex == questions.length - 1) {
        questionScreen = false;
        setState(() {});
      }
      setState(() {
        selectedAnswerindex = -1;
        questionIndex++;
      });
    }
  }

  List questions = [
    const Singlequestionformat(
        questions: "Who is founder of Google?",
        options: ["Bill Gates", "Steve Jobs", "Elon Mask", "Lary Page"],
        answer: 3),
    const Singlequestionformat(
        questions: "Who is founder of Microsoft?",
        options: ["Bill Gates", "Steve Jobs", "Elon Mask", "Lary Page"],
        answer: 0),
    const Singlequestionformat(
        questions: "Who is founder of Apple?",
        options: ["Bill Gates", "Steve Jobs", "Elon Mask", "Lary Page"],
        answer: 1),
    const Singlequestionformat(
        questions: "Who is founder of Amazon?",
        options: ["Bill Gates", "Jeff Bezos", "Elon Mask", "Lary Page"],
        answer: 1),
    const Singlequestionformat(
        questions: "Who is founder of Tesla?",
        options: ["Bill Gates", "Steve Jobs", "Elon Mask", "Lary Page"],
        answer: 2),
  ];

  Scaffold isQuestionScreen() {
    if (questionScreen == true) {
      return Scaffold(
        appBar: AppBar(
          centerTitle: true,
          backgroundColor: const Color.fromARGB(255, 39, 123, 176),
          title: const Text(
            "QuizApp",
            style: TextStyle(
              fontSize: 30,
              fontWeight: FontWeight.w800,
              color: Colors.orange,
            ),
          ),
        ),
        body: Column(
          children: [
            const SizedBox(
              height: 25,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                const Text(
                  "Questions : ",
                  style: TextStyle(
                    fontSize: 25,
                    fontWeight: FontWeight.w600,
                  ),
                ),
                Text(
                  "${questionIndex + 1}/${questions.length}",
                  style: const TextStyle(
                    fontSize: 25,
                    fontWeight: FontWeight.w600,
                  ),
                ),
              ],
            ),
            const SizedBox(
              height: 50,
            ),
            Container(
              margin: const EdgeInsets.only(left: 20),
              width: 380,
              height: 50,
              child: Text(
                questions[questionIndex].questions,
                style: const TextStyle(
                  fontSize: 23,
                  fontWeight: FontWeight.w400,
                ),
              ),
            ),
            const SizedBox(
              height: 30,
            ),
            SizedBox(
              height: 30,
              width: 300,
              child: ElevatedButton(
                  onPressed: () {
                    if (selectedAnswerindex == -1) {
                      setState(() {
                        selectedAnswerindex = 0;
                      });
                    }
                  },
                  style: ButtonStyle(backgroundColor: isanswercorrect(0)),
                  child: Text("A.${questions[questionIndex].options[0]}",
                      style: const TextStyle(
                        fontSize: 23,
                        fontWeight: FontWeight.w400,
                      ))),
            ),
            const SizedBox(
              height: 30,
            ),
            SizedBox(
              height: 30,
              width: 300,
              child: ElevatedButton(
                  onPressed: () {
                    if (selectedAnswerindex == -1) {
                      setState(() {
                        selectedAnswerindex = 1;
                      });
                    }
                  },
                  style: ButtonStyle(backgroundColor: isanswercorrect(1)),
                  child: Text("B.${questions[questionIndex].options[1]}",
                      style: const TextStyle(
                        fontSize: 23,
                        fontWeight: FontWeight.w400,
                      ))),
            ),
            const SizedBox(
              height: 30,
            ),
            SizedBox(
              height: 30,
              width: 300,
              child: ElevatedButton(
                  onPressed: () {
                    if (selectedAnswerindex == -1) {
                      setState(() {
                        selectedAnswerindex = 2;
                      });
                    }
                  },
                  style: ButtonStyle(backgroundColor: isanswercorrect(2)),
                  child: Text("C.${questions[questionIndex].options[2]}",
                      style: const TextStyle(
                        fontSize: 23,
                        fontWeight: FontWeight.w400,
                      ))),
            ),
            const SizedBox(
              height: 30,
            ),
            SizedBox(
              height: 30,
              width: 300,
              child: ElevatedButton(
                  onPressed: () {
                    if (selectedAnswerindex == -1) {
                      setState(() {
                        selectedAnswerindex = 3;
                      });
                    }
                  },
                  style: ButtonStyle(backgroundColor: isanswercorrect(3)),
                  child: Text(
                    "D.${questions[questionIndex].options[3]}",
                    style: const TextStyle(
                      fontSize: 23,
                      fontWeight: FontWeight.w400,
                    ),
                  )),
            ),
          ],
        ),
        floatingActionButton: FloatingActionButton(
          onPressed: checkpageisvalide,
          backgroundColor: Colors.purpleAccent,
          splashColor: Colors.purple,
          child: const Icon(
            Icons.forward,
            color: Colors.white,
          ),
        ),
        backgroundColor: const Color.fromARGB(255, 233, 227, 172),
      );
    } else {
      return Scaffold(
        appBar: AppBar(
          centerTitle: true,
          backgroundColor: const Color.fromARGB(255, 39, 123, 176),
          title: const Text(
            "QuizApp",
            style: TextStyle(
              fontSize: 30,
              fontWeight: FontWeight.w800,
              color: Colors.orange,
            ),
          ),
        ),
        body: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Column(
              children: [
                const SizedBox(
                  height: 30,
                ),
                Image.network(
                  "https://i.pinimg.com/736x/47/4c/84/474c8409b925e086e41c21304699fc88.jpg",
                  height: 300,
                  width: 300,
                ),
                const SizedBox(
                  height: 50,
                ),
                const SizedBox(
                    child: Text(
                  "Congratulations!!!",
                  style: TextStyle(
                    fontSize: 28,
                    fontWeight: FontWeight.bold,
                  ),
                )),
                const SizedBox(
                  height: 30,
                ),
                const Text(
                  "You Are Successfully Completed Quiz!",
                  style: TextStyle(
                    fontSize: 18,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                const SizedBox(
                  height: 20,
                ),
                Text(
                  "You Score: $score/${questions.length}",
                  style: const TextStyle(
                      fontSize: 20, fontWeight: FontWeight.w600),
                ),
                const SizedBox(
                  height: 20,
                ),
                ElevatedButton(
                    onPressed: () {
                      setState(() {
                        selectedAnswerindex = -1;
                        questionIndex = 0;
                        questionScreen = true;
                        score = 0;
                      });
                    },
                    child: const Text("RESET"))
              ],
            ),
          ],
        ),
        backgroundColor: const Color.fromARGB(255, 233, 227, 172),
      );
    }
  }

  @override
  Widget build(BuildContext context) {
    return isQuestionScreen();
  }
}
