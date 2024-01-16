// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:flutter/material.dart';

class QueSummary extends StatelessWidget {
  const QueSummary({
    Key? key,
    required this.summaryData,
  }) : super(key: key);

  final List<Map<String, Object>> summaryData;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 300,
      child: SingleChildScrollView(
        physics: BouncingScrollPhysics(),
        child: Column(
          children: summaryData.map((data) {
            return Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Container(
                  height: 30,
                  width: 30,
                  alignment: Alignment.center,
                  decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(100)),
                  child: Text(
                    ((data['que_index'] as int) + 1).toString(),
                  ),
                ),
                Expanded(
                  child: Padding(
                    padding: const EdgeInsets.symmetric(
                        vertical: 5.0, horizontal: 10),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          data['que_text'] as String,
                          style: const TextStyle(
                              fontSize: 18,
                              color: Color.fromARGB(255, 237, 172, 172)),
                        ),
                        const SizedBox(
                          height: 5,
                        ),
                        Text(
                          data['user_ans'] as String,
                          style: const TextStyle(
                              fontSize: 15,
                              color: Color.fromARGB(255, 172, 237, 198)),
                        ),
                        Text(
                          data['correct_ans'] as String,
                          style: const TextStyle(
                              fontSize: 15,
                              color: Color.fromARGB(255, 177, 172, 237)),
                        ),
                      ],
                    ),
                  ),
                )
              ],
            );
          }).toList(),
        ),
      ),
    );
  }
}
