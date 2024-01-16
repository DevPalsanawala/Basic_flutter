// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import 'package:adv_basices/ans_btn.dart';
import 'package:adv_basices/data/questions.dart';

class Que extends StatefulWidget {
  const Que({Key? key, required this.onSelect}) : super(key: key);

  final void Function(String answer) onSelect;
  @override
  State<Que> createState() => _QueState();
}

class _QueState extends State<Que> {
  var currentIndex = 0;

  void answerQue(String answer) {
    widget.onSelect(answer);
    setState(() {
      // currentIndex = currentIndex + 1;
      // currentIndex += 1;
      currentIndex++;
    });
  }

  @override
  Widget build(BuildContext context) {
    final currentQue = questions[currentIndex];
    return SizedBox(
      width: double.infinity,
      child: Container(
        margin: const EdgeInsets.all(40),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            Text(
              currentQue.text,
              textAlign: TextAlign.center,
              style: GoogleFonts.novaSquare(
                color: const Color.fromARGB(197, 45, 163, 206),
                fontWeight: FontWeight.bold,
                fontSize: 25,
              ),
            ),
            const SizedBox(
              height: 30,
            ),
            ...currentQue.shuffledans().map(((answer) {
              return AnsBtn(
                Anstext: answer,
                onTap: () {
                  answerQue(answer);
                },
              );
            }))
          ],
        ),
      ),
    );
  }
}
