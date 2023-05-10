// import 'package:flutter/material.dart';

// class GradientLayout extends StatelessWidget {
//   const GradientLayout(this.color1, this.color2, {super.key});

//   final Color color1;
//   final Color color2;

//   @override
//   Widget build(context) {
//     return Container(
//       padding: const EdgeInsets.fromLTRB(10, 70, 10, 20),
//       decoration: BoxDecoration(
//         gradient: LinearGradient(
//           colors: [color1, color2],
//           begin: Alignment.topLeft,
//           end: Alignment.bottomLeft,
//         ),
//       ),
//       child: Column(
//         children: [
//           Center(
//             child: Image.asset(
//               'assets/images/quiz-logo.png',
//             ),
//           ),
//           const SizedBox(
//             height: 40,
//           ),
//           const Text(
//             'Learn flutter the fun way',
//             style: TextStyle(
//               fontSize: 20,
//               color: Colors.white,
//             ),
//           ),
//           const SizedBox(
//             height: 30,
//           ),
//           TextButton(
//             onPressed: () {},
//             child: const Text(
//               'Start Quiz',
//               style: TextStyle(
//                 fontSize: 20,
//                 color: Colors.white,
//               ),
//             ),
//           ),
//         ],
//       ),
//     );
//   }
// }

import 'package:flutter/material.dart';

class StartScreen extends StatelessWidget {
  const StartScreen(this.startQuiz, {super.key});

  final void Function() startQuiz;

  @override
  Widget build(context) {
    return Center(
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          //Setting the opacity of the image
          // Opacity(
          //   opacity: 0.6,
          //   child: Image.asset(
          //     'assets/images/quiz-logo.png',
          //     width: 240,
          //   ),
          // ),

          Image.asset(
            'assets/images/quiz-logo.png',
            width: 240,
            color: const Color.fromARGB(151, 244, 241, 241),
          ),
          const SizedBox(
            height: 30,
          ),
          const Text(
            'Learn Flutter the fun way!',
            style: TextStyle(
              fontSize: 22,
              color: Color.fromARGB(255, 228, 211, 211),
            ),
          ),
          const SizedBox(
            height: 45,
          ),
          // OutlinedButton(
          //   onPressed: () {},
          //   style: OutlinedButton.styleFrom(
          //     //foregroundColor: Colors.white,
          //     backgroundColor: Colors.white,
          //     //primary: Colors.amber,
          //     //shadowColor: Colors.amber,
          //     //onSurface: Colors.amberAccent,
          //     //elevation: 20,
          //     side: const BorderSide(
          //       color: Colors.white,
          //       width: 5,
          //     ),
          //   ),
          //   child: const Text(
          //     'Start Quiz',
          //     style: TextStyle(
          //       fontSize: 16,
          //       color: Colors.indigoAccent,
          //     ),
          //   ),
          // ),

          //adding button with icon
          OutlinedButton.icon(
            onPressed: startQuiz,
            style: OutlinedButton.styleFrom(
              backgroundColor: Colors.white,
              side: const BorderSide(
                color: Colors.white,
                width: 5,
              ),
            ),
            icon: const Icon(Icons.arrow_right_alt),
            label: const Text(
              'Start Quiz',
              style: TextStyle(
                fontSize: 16,
                color: Colors.indigoAccent,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
