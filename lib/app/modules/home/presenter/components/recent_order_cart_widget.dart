import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:iconly/iconly.dart';

class RecentOrderCardWidget extends StatelessWidget {
  final String title;
  final String asset;
  const RecentOrderCardWidget({Key? key, required this.asset, required this.title}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Container(
        height: 100,
        width: 220,
        child: Card(
          shadowColor: Colors.black.withOpacity(.3),
          elevation: 8,
          child: Row(
            children: [
              Flexible(
                flex: 3,
                child: SizedBox(
                  width: double.maxFinite,
                  child: Transform.translate(
                    offset: Offset(5, -14),
                    child: Transform.scale(
                      scale: 1.3,
                      child: Image.asset(
                        asset,
                      ),
                    ),
                  ),
                ),
              ),
              Flexible(
                flex: 4,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    const SizedBox(
                      height: 14,
                    ),
                    Text(
                      title,
                      style: GoogleFonts.poppins(
                        fontSize: 14,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    Text(
                      '1 item',
                      style: GoogleFonts.poppins(
                        fontSize: 14,
                      ),
                    ),
                    const SizedBox(height: 2),
                    Row(
                      children: [
                        Text(
                          'View details',
                          style: GoogleFonts.poppins(fontSize: 14, color: Colors.black54),
                        ),
                        const SizedBox(width: 6),
                        Icon(IconlyLight.arrow_right, size: 14, color: Colors.black54)
                      ],
                    ),
                  ],
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
