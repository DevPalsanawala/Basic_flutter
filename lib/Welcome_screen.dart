// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class Welcomepage extends StatelessWidget {
  const Welcomepage({Key? key, required this.StartQuiz}) : super(key: key);
  final void Function() StartQuiz;

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            Image.asset(
              'assets/images/logo.png',
              width: 250,
              height: 250,
              color: const Color.fromARGB(100, 255, 255, 255),
            ),
            // Opacity(
            //   opacity: 0.8,
            //   child: Image.asset(
            //     'assets/images/logo.png',
            //     width: 250,
            //     height: 250,
            //   ),
            // ),
            const SizedBox(
              height: 80,
            ),
            Text(
              "Learn Flutter in fun Way!",
              style: GoogleFonts.novaSquare(
                  color: Colors.white,
                  fontSize: 25,
                  fontWeight: FontWeight.bold),
            ),
            const SizedBox(
              height: 30,
            ),
            OutlinedButton.icon(
              style: OutlinedButton.styleFrom(
                foregroundColor: Colors.white,
                backgroundColor: const Color.fromARGB(200, 25, 155, 202),
                padding: const EdgeInsets.symmetric(
                  horizontal: 32,
                  vertical: 12,
                ),
                elevation: 20,
              ),
              onPressed: StartQuiz,
              // onPressed: () {
              //   StartQuiz();
              // },
              icon: const Icon(Icons.start),
              label: const Text(
                "Start",
                style: TextStyle(
                  fontSize: 20,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
