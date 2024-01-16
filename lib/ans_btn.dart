// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class AnsBtn extends StatelessWidget {
  const AnsBtn({Key? key, required this.Anstext, required this.onTap})
      : super(key: key);

  final String Anstext;
  final void Function() onTap;
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.all(5),
      child: ElevatedButton(
        onPressed: onTap,
        style: ElevatedButton.styleFrom(
          padding: const EdgeInsets.symmetric(horizontal: 50, vertical: 10),
          foregroundColor: Colors.white,
          backgroundColor: const Color.fromARGB(146, 16, 80, 139),
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(15),
            side: const BorderSide(color: Colors.black),
          ),
        ),
        child: Text(
          Anstext,
          textAlign: TextAlign.center,
          style: GoogleFonts.novaSquare(
            color: Color.fromARGB(255, 152, 176, 206),
            fontSize: 19,
          ),
        ),
      ),
    );
  }
}
