import 'package:flutter/material.dart';
import 'dart:math' as math;

import 'package:squidgame/app/core/round_colors.dart';

class RunningDropWidget extends StatelessWidget {
  final AnimationController controller;
  final int selectedIndex;
  final int previousIndex;

  const RunningDropWidget(
      {super.key,
      required this.controller,
      required this.selectedIndex,
      required this.previousIndex});

  @override
  Widget build(BuildContext context) {
    final deviceWidth = MediaQuery.of(context).size.width;
    final maxElementWidth = deviceWidth / 4;
    return AnimatedBuilder(
        animation: controller,
        builder: (_, __) {
          return Transform.translate(
            offset: Tween<Offset>(
              begin: Offset(previousIndex * maxElementWidth, 0),
              end: Offset(selectedIndex * maxElementWidth, 0),
            )
                .animate(
                  CurvedAnimation(
                    parent: controller,
                    curve: const Interval(0.0, 0.35),
                  ),
                )
                .value,
            child: SizedBox(
              width: maxElementWidth,
              child: const Column(
                mainAxisSize: MainAxisSize.min,
                children: [
                  // Container(
                  //   height: 10,
                  //   width: 10,
                  //   decoration: BoxDecoration(
                  //     shape: BoxShape.circle,
                  //     color: Colors.yellow,
                  //   ),
                  // ),
                  MyArc(diameter: 15)
                ],
              ),
            ),
          );
        });
  }
}

class MyArc extends StatelessWidget {
  final double diameter;

  const MyArc({super.key, this.diameter = 200});

  @override
  Widget build(BuildContext context) {
    return CustomPaint(
      painter: MyPainter(),
      size: Size(diameter, diameter),
    );
  }
}

// This is the Painter class
class MyPainter extends CustomPainter {
  @override
  void paint(Canvas canvas, Size size) {
    Paint paint = Paint()..color = RoundColor.pink;
    canvas.drawArc(
      Rect.fromCenter(
        center: Offset(size.height / 2, size.width),
        height: size.height,
        width: size.width,
      ),
      math.pi,
      math.pi,
      false,
      paint,
    );
  }

  @override
  bool shouldRepaint(CustomPainter oldDelegate) => false;
}
