// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import 'package:adv_basices/data/questions.dart';
import 'package:adv_basices/que_summary.dart';

class Result extends StatelessWidget {
  const Result({
    Key? key,
    required this.onRestart,
    required this.choosenAnswers,
  }) : super(key: key);

  final void Function() onRestart;
  final List<String> choosenAnswers;

  List<Map<String, Object>> getSummaryData() {
    final List<Map<String, Object>> Summary = [];

    for (var i = 0; i < choosenAnswers.length; i++) {
      Summary.add({
        'que_index': i,
        'que_text': questions[i].text,
        'correct_ans': questions[i].answers[0],
        'user_ans': choosenAnswers[i],
      });
    }

    return Summary;
  }

  @override
  Widget build(BuildContext context) {
    final summarydata = getSummaryData();
    final numoftotelque = questions.length;
    // count correct ans
    final numofcorrectque = summarydata.where((data) {
      return data['user_ans'] == data['correct_ans'];
    }).length;

    return SizedBox(
      width: double.infinity,
      child: Container(
        margin: const EdgeInsets.all(40),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              "You answered ${numofcorrectque} out of ${numoftotelque} Questions correctly!",
              textAlign: TextAlign.center,
              style: GoogleFonts.novaSquare(
                  color: const Color.fromARGB(200, 235, 233, 233),
                  fontSize: 25,
                  fontWeight: FontWeight.bold),
            ),
            const SizedBox(
              height: 30,
            ),
            QueSummary(summaryData: summarydata),
            const SizedBox(
              height: 30,
            ),
            TextButton.icon(
              onPressed: onRestart,
              style: TextButton.styleFrom(
                foregroundColor: Colors.white,
                backgroundColor: const Color.fromARGB(200, 25, 155, 202),
                padding: const EdgeInsets.symmetric(
                  horizontal: 32,
                  vertical: 12,
                ),
                elevation: 20,
              ),
              icon: const Icon(Icons.refresh),
              label: const Text('Restart Quiz!'),
            )
          ],
        ),
      ),
    );
  }
}
