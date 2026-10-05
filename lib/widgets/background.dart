import 'dart:math';

import 'package:disenos/theme/global_themes.dart';
import 'package:flutter/material.dart';

class Background extends StatelessWidget {
  const Background({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final boxDecoration = BoxDecoration(
            gradient: LinearGradient(
              begin: Alignment.topCenter,
              end: Alignment.bottomCenter,

              stops: [0.2, 0.8],

              colors: [
                GlobalThemes().primary,
                GlobalThemes().secundary,
              ],
            ),
          );




    return Stack(
      children: [
        Container(
          decoration: boxDecoration,
        ),

        Positioned(
          top: -100,
          left: -30,
          
          child: pinkBox())

      ],
    );
  }
}

class pinkBox extends StatelessWidget {
  const pinkBox({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return 
    Transform.rotate(
      angle: -pi / 5.0,
      child: Container(
        width: 360,
        height: 360,
        
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(50),
          gradient: LinearGradient(colors: [
            const Color.fromARGB(255, 136, 5, 49),
            Colors.pink
          ])
        ),
      ),
    );
  }
}
