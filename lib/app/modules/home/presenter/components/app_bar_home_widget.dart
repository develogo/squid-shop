import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:iconly/iconly.dart';

class HomeAppBarWidget extends StatelessWidget {
  const HomeAppBarWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Container(
        padding: const EdgeInsets.symmetric(horizontal: 10),
        height: 60,
        child: Row(
          children: [
            Hero(
              tag: 'splash',
              child: Image.asset(
                'asset/image/logo_black.png',
                width: 80,
              ),
            ),
            const SizedBox(width: 20),
            Expanded(
              child: Container(
                height: 42,
                decoration: BoxDecoration(
                  color: Colors.grey.shade200,
                  borderRadius: BorderRadius.circular(25),
                ),
                child: TextField(
                  style: GoogleFonts.poppins(
                    fontSize: 16,
                    color: Colors.black,
                  ),
                  decoration: const InputDecoration(
                    contentPadding: EdgeInsets.symmetric(vertical: 5, horizontal: 20),
                    border: InputBorder.none,
                    hintText: 'Search',
                    suffixIcon: Icon(IconlyLight.search),
                  ),
                ),
              ),
            ),
            const SizedBox(width: 20),
            const FaIcon(FontAwesomeIcons.bars),
          ],
        ),
      ),
    );
  }
}
