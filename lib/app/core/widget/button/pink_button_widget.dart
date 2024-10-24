import 'package:flutter/material.dart';
import 'package:squidgame/app/core/round_colors.dart';

class PinkButtonWidget extends StatelessWidget {
  final Widget child;
  final VoidCallback onPressed;
  final Color color;
  final double? height;

  const PinkButtonWidget({
    super.key,
    required this.child,
    required this.onPressed,
    this.color = RoundColor.pink,
    this.height = 45,
  });

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: double.maxFinite,
      height: height,
      child: ElevatedButton(
        onPressed: onPressed,
        style: ElevatedButton.styleFrom(
          backgroundColor: color,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(8),
          ),
        ),
        child: child,
      ),
    );
  }
}
