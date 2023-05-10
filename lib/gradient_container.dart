import './styled_text.dart';
import 'package:flutter/material.dart';


class GradientContainer extends StatelessWidget {
  //the first line is the procedure or the second line for constructing key for an inherited class in this case the GradientContainer inherits StatlessWidget

  // const GradientContainer({key}): super(key:key);
  const GradientContainer({super.key});

  

  @override
  Widget build(BuildContext context) {
    return Container(
          decoration: const BoxDecoration(
            gradient: LinearGradient(
              colors: [
                Color.fromARGB(255, 26, 2, 80),
                Color.fromARGB(255, 45, 7, 98)
              ],
              begin: Alignment.topLeft,
              end: Alignment.bottomRight,
            ),
          ),
          child: const Center(
            child: StyledText(),
          ),
        );
  }
}