import 'package:flutter/material.dart';
import 'package:dice_app/dice_roller.dart';

var startAlignment = Alignment.topLeft;
var endAlignment = Alignment.bottomRight;

// class GradientContainer extends StatelessWidget {
//   const GradientContainer(this.colors, {super.key});
//   final List<Color> colors;

//   @override
//   Widget build(BuildContext context) {
//     return Container(
//       decoration: BoxDecoration(
//           gradient: LinearGradient(
//               colors: colors, begin: startAlignment, end: endAlignment)),
//       child: const Center(
//         child: StyleText('Hello World'),
//       ),
//     );
//   }
// }

class GradientContainer extends StatelessWidget {
  GradientContainer(this.colors1, this.colors2, {super.key});

  GradientContainer.purple({super.key})
      : colors1 = Colors.deepPurple,
        colors2 = Colors.indigo;

  final Color colors1;
  final Color colors2;

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
          gradient: LinearGradient(
              colors: [colors1, colors2],
              begin: startAlignment,
              end: endAlignment)),
      child: Center(
        // child: StyleText('Hello World'),
        // child: Image.asset(
        //   'assets/images/dice-2.png',
        //   width: 200,
        // ),
        child: DiceRoller(),
      ),
    );
  }
}

// class GradientContainer extends StatelessWidget {
//   // const GradientContainer({key}): super(key: key);
//   const GradientContainer({super.key, required this.colors});
//   final List<Color> colors;

//   @override
//   Widget build(BuildContext context) {
//     return Container(
//       decoration: BoxDecoration(
//           gradient: LinearGradient(
//               colors: colors, begin: startAlignment, end: endAlignment)),
//       child: const Center(
//         child: StyleText('Hello World'),
//       ),
//     );
//   }
// }
