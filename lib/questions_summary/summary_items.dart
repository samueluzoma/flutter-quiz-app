import 'package:flutter/material.dart';
import 'package:nextlevel/questions_summary/questions_identifier.dart';
import 'package:google_fonts/google_fonts.dart';

class SummaryItem extends StatelessWidget {
  const SummaryItem(
    this.itemData, {
    super.key,
  });
  final Map<String, Object> itemData;

  @override
  Widget build(context) {
    final isCorrectAnswer =
        itemData['chosen_answer'] == itemData['correct_answer'];
    return Row(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: <Widget>[
        QuestionIdentifier(
          isCorrectAnswer: isCorrectAnswer,
          questionIndex: itemData['question_index'] as int,
        ),
        // Padding(
        //   padding: const EdgeInsets.fromLTRB(10, 0, 0, 90),
        //   child: Text(
        //     ((data['question_index'] as int) + 1).toString(),
        //     style: const TextStyle(
        //       fontSize: 18,
        //       color: Colors.white,
        //     ),
        //   ),
        // ),
        const SizedBox(
          width: 30,
        ),
        Expanded(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              Text(
                itemData['question'] as String,
                style: GoogleFonts.lato(
                  color: Colors.white,
                  fontSize: 16,
                  fontWeight: FontWeight.bold,
                ),
              ),

              //OR
              // Text(
              //   (data['question'] as String),
              //   style: const TextStyle(
              //     fontSize: 20,
              //     color: Color.fromARGB(255, 243, 198, 198),
              //   ),
              //   textAlign: TextAlign.center,
              // ),
              const SizedBox(
                height: 6,
              ),

              Text(
                itemData['chosen_answer'] as String,
                style: GoogleFonts.lato(
                  color: const Color.fromARGB(255, 147, 232, 81),
                  fontSize: 16,
                  fontWeight: FontWeight.bold,
                ),
              ),
              // Text(
              //   failAnswer + (data['chosen_answer'] as String),
              //   style: const TextStyle(
              //     color: Color.fromARGB(255, 236, 236, 37),
              //     fontSize: 14,
              //   ),
              //   textAlign: TextAlign.center,
              // ),

              Text(
                itemData['correct_answer'] as String,
                style: GoogleFonts.lato(
                  color: const Color.fromARGB(255, 131, 197, 244),
                  fontSize: 16,
                  fontWeight: FontWeight.bold,
                ),
              ),
              // Text(
              //   ansCorrect + (data['correct_answer'] as String),
              //   style: const TextStyle(
              //     color: Color.fromARGB(255, 26, 239, 83),
              //     fontSize: 14,
              //   ),
              //   textAlign: TextAlign.center,
              // ),
              const SizedBox(
                height: 15,
              ),
            ],
          ),
        )
      ],
    );
  }
}
