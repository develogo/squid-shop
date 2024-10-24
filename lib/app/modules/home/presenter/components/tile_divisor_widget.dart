import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class TileDivisorWidget extends StatelessWidget {
  final String title;
  const TileDivisorWidget({super.key, required this.title});

  @override
  Widget build(BuildContext context) {
    return Container(
      //color: Colors.red,
      padding: const EdgeInsets.symmetric(horizontal: 14, vertical: 8),
      child: Row(
        children: [
          Text(
            title,
            style: GoogleFonts.poppins(
              fontSize: 22,
              fontWeight: FontWeight.bold,
            ),
          ),
        ],
      ),
    );
  }
}
