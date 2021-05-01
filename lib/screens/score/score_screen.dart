import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:quizapp/constants.dart';
import 'package:quizapp/controllers/question_controller.dart';
import 'package:quizapp/widgets/widgets.dart';

class ScoreScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    QuestionController _qnController = Get.put(QuestionController());
    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: false,
        title: appBar(context),
        backgroundColor: Colors.transparent,
        elevation: 0.0,
        brightness: Brightness.light,
      ),
      body: Stack(
        fit: StackFit.expand,
        children: [
          SafeArea(
            child: Padding(
              padding: EdgeInsets.symmetric(horizontal: 40),
              child: Column(
                children: [
                  Spacer(flex: 3),
                  Text(
                    "Score",
                    style: Theme.of(context)
                        .textTheme
                        .headline3
                        .copyWith(color: kSecondaryColor),
                  ),
                  Spacer(),
                  Text(
                    "${_qnController.numOfCorrectAns * 10}/${_qnController.questions.length * 10}",
                    style: Theme.of(context)
                        .textTheme
                        .headline4
                        .copyWith(color: kSecondaryColor),
                  ),
                  Spacer(),
                  if (_qnController.numOfCorrectAns * 10 >= 80) ...[
                    Text(
                      'You do not care how many people are in the world you want him/her end of story',
                      style: Theme.of(context)
                          .textTheme
                          .headline6
                          .copyWith(color: kSecondaryColor),
                    ),
                  ],
                  if (_qnController.numOfCorrectAns * 10 < 70 &&
                      _qnController.numOfCorrectAns * 10 >= 50) ...[
                    Text(
                      'You are a good lover. If you are in a good mood, you are in a good mood but if the mood is not good, you can become a stubborn villain as well.',
                      style: Theme.of(context)
                          .textTheme
                          .headline6
                          .copyWith(color: kSecondaryColor),
                    ),
                  ],
                  if (_qnController.numOfCorrectAns * 10 <= 40) ...[
                    Text(
                      'You act like a broken feeling gland because you hardly care about his feeling.',
                      style: Theme.of(context)
                          .textTheme
                          .headline6
                          .copyWith(color: kSecondaryColor),
                    ),
                  ],
                  Spacer(flex: 3),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
