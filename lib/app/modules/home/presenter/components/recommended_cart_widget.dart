import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:iconly/iconly.dart';
import 'package:squidgame/app/core/widget/button/pink_button_widget.dart';

class RecommendedCardWidget extends StatelessWidget {
  final String image;
  final String name;

  final VoidCallback onPressed;

  const RecommendedCardWidget(
      {super.key,
      required this.onPressed,
      required this.image,
      required this.name});

  @override
  Widget build(BuildContext context) {
    return Center(
      child: SizedBox(
        height: 300,
        width: 200,
        child: Card(
          color: Colors.white,
          shadowColor: Colors.black.withOpacity(.3),
          elevation: 8,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(10),
          ),
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 12, vertical: 10),
            child: Stack(
              children: [
                Transform.translate(
                  offset: const Offset(0, -40),
                  child: Align(
                    alignment: Alignment.topCenter,
                    child: Hero(
                      tag: image,
                      child: Image.asset(
                        image,
                        height: 220,
                      ),
                    ),
                  ),
                ),
                Align(
                  alignment: Alignment.topRight,
                  child: SizedBox(
                    width: 30,
                    child: IconButton(
                      padding: EdgeInsets.zero,
                      splashRadius: 20,
                      iconSize: 26,
                      icon: const Icon(
                        IconlyLight.heart,
                        color: Colors.red,
                      ),
                      onPressed: () {},
                    ),
                  ),
                ),
                Align(
                  alignment: Alignment.bottomCenter,
                  child: Column(
                    mainAxisSize: MainAxisSize.min,
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text(
                            name,
                            style: GoogleFonts.poppins(
                              fontSize: 16,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                          const Icon(
                            IconlyBold.star,
                            color: Colors.amber,
                          )
                        ],
                      ),
                      const SizedBox(height: 6),
                      PinkButtonWidget(
                        onPressed: onPressed,
                        child: Text(
                          'View details',
                          style: GoogleFonts.poppins(
                            fontSize: 16,
                            fontWeight: FontWeight.bold,
                            color: Colors.white,
                          ),
                        ),
                      )
                    ],
                  ),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
