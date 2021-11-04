import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:flutter_modular/flutter_modular.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:squidgame/app/core/round_colors.dart';

import 'splash_store.dart';

class SplashPage extends StatefulWidget {
  final String title;
  const SplashPage({Key? key, this.title = 'SplashPage'}) : super(key: key);
  @override
  SplashPageState createState() => SplashPageState();
}

class SplashPageState extends State<SplashPage> {
  final SplashStore store = Modular.get();

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return Scaffold(
      body: Container(
        height: size.height,
        width: size.width,
        decoration: const BoxDecoration(
          image: DecorationImage(
            fit: BoxFit.cover,
            image: AssetImage('asset/image/splash_background.png'),
          ),
        ),
        child: Padding(
          padding: EdgeInsets.only(left: 16, right: 16, bottom: 16),
          child: SafeArea(
            child: Column(
              children: <Widget>[
                const SizedBox(
                  height: 10,
                ),
                Image.asset(
                  'asset/image/logo_white.png',
                  width: 100,
                ),
                const Spacer(),
                ClipRect(
                  child: BackdropFilter(
                    filter: ImageFilter.blur(
                      sigmaX: 2.0,
                      sigmaY: 2.0,
                    ),
                    child: Container(
                      width: double.maxFinite,
                      height: size.height * .36,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(15),
                        color: Colors.grey.withOpacity(.4),
                      ),
                      child: Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 14, vertical: 12),
                        child: Column(
                          children: [
                            const SizedBox(height: 20),
                            Hero(
                              tag: 'splash',
                              child: Image.asset(
                                'asset/image/everything.png',
                                width: 220,
                              ),
                            ),
                            const Spacer(),
                            Text(
                              'Shop your davourite toys and outfits of the Squid Game on the go!',
                              textAlign: TextAlign.center,
                              style: GoogleFonts.poppins(fontSize: 14, color: Colors.white),
                            ),
                            const Spacer(),
                            SizedBox(
                              width: double.infinity,
                              height: 45,
                              child: ElevatedButton(
                                onPressed: () => Modular.to.pushNamed('/home/'),
                                style: ElevatedButton.styleFrom(
                                  primary: RoundColor.pink,
                                  shape: RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(12),
                                  ),
                                ),
                                child: Text(
                                  'Shop Now',
                                  style: GoogleFonts.poppins(fontSize: 16, fontWeight: FontWeight.bold),
                                ),
                              ),
                            ),
                            const SizedBox(
                              height: 10,
                            )
                          ],
                        ),
                      ),
                    ),
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
