import 'package:flutter_modular/flutter_modular.dart';
import 'package:flutter_triple/flutter_triple.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:iconly/iconly.dart';
import 'package:squidgame/app/core/round_colors.dart';
import 'package:squidgame/app/core/widget/button/pink_button_widget.dart';
import 'package:squidgame/app/modules/product_detail/presenter/product_detail_arguments.dart';
import 'package:squidgame/app/modules/product_detail/presenter/product_detail_store.dart';
import 'package:flutter/material.dart';

class ProductDetailPage extends StatefulWidget {
  final ProductDetailArguments args;
  const ProductDetailPage({Key? key, required this.args}) : super(key: key);
  @override
  ProductDetailPageState createState() => ProductDetailPageState();
}

class ProductDetailPageState extends State<ProductDetailPage> {
  final ProductDetailStore store = Modular.get();

  Widget buildCircle({required Function() onPress, required IconData icon, required Color color}) {
    return ElevatedButton(
      onPressed: onPress,
      child: Icon(
        icon,
        color: Colors.white,
        size: 16,
      ),
      style: ElevatedButton.styleFrom(
        elevation: 1,
        shape: CircleBorder(),
        padding: EdgeInsets.all(15),
        primary: color,
        onPrimary: color,
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return Scaffold(
      body: Column(
        children: [
          Stack(
            children: <Widget>[
              Align(
                alignment: Alignment.topLeft,
                child: Container(
                  height: size.height * .6,
                  width: size.width * .5,
                  decoration: const BoxDecoration(
                    color: RoundColor.lightPink,
                    borderRadius: BorderRadius.only(
                      bottomRight: Radius.circular(25),
                    ),
                  ),
                ),
              ),
              Positioned(
                left: 0,
                right: 0,
                top: size.height * .1,
                child: Hero(
                  tag: widget.args.assetImage,
                  child: Image.asset(
                    widget.args.assetImage,
                    height: size.height * .5,
                  ),
                ),
              ),
              SafeArea(
                child: Container(
                  width: size.width,
                  margin: const EdgeInsets.symmetric(horizontal: 14, vertical: 10),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      IconButton(
                        onPressed: () => Modular.to.pop(),
                        icon: const Icon(
                          IconlyBroken.arrow_left,
                          color: Colors.black,
                        ),
                      ),
                      IconButton(
                        onPressed: () {},
                        icon: const Icon(
                          IconlyLight.heart,
                          color: Colors.black,
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ],
          ),
          const SizedBox(height: 10),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 14),
            child: SizedBox(
              width: double.maxFinite,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    widget.args.name,
                    style: GoogleFonts.poppins(fontSize: 36, fontWeight: FontWeight.bold),
                  ),
                  Text(
                    '\$ 79.90',
                    style: GoogleFonts.poppins(fontSize: 22, fontWeight: FontWeight.bold, color: Colors.grey.shade500),
                  ),
                  const SizedBox(height: 15),
                  SizedBox(
                    width: 200,
                    height: 50,
                    child: Stack(
                      children: [
                        Align(
                            alignment: Alignment.centerLeft,
                            child: buildCircle(icon: FontAwesomeIcons.minus, onPress: store.decrement, color: RoundColor.pink.withOpacity(.7))),
                        Center(
                          child: ValueListenableBuilder(
                            valueListenable: store.qty,
                            builder: (context, value, child) => Text(
                              store.qty.value.toString(),
                              style: GoogleFonts.poppins(fontSize: 22, fontWeight: FontWeight.bold),
                            ),
                          ),
                        ),
                        Align(
                            alignment: Alignment.centerRight,
                            child: buildCircle(icon: FontAwesomeIcons.plus, onPress: store.increment, color: RoundColor.pink)),
                      ],
                    ),
                  ),
                  const SizedBox(height: 15),
                  Row(
                    children: [
                      Row(
                        children: List.generate(
                          5,
                          (index) => const FaIcon(
                            FontAwesomeIcons.solidStar,
                            color: Colors.amber,
                            size: 14,
                          ),
                        ),
                      ),
                      const SizedBox(width: 20),
                      Text(
                        '5',
                        style: GoogleFonts.poppins(
                          fontWeight: FontWeight.bold,
                          color: Colors.grey.shade600,
                          fontSize: 18,
                        ),
                      )
                    ],
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
      bottomNavigationBar: Padding(
        padding: const EdgeInsets.only(bottom: 14, left: 14, right: 14),
        child: Row(
          children: [
            Expanded(
              child: PinkButtonWidget(
                color: RoundColor.lightPink,
                height: 56,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    Text('Add to cart', style: GoogleFonts.poppins(fontSize: 16, fontWeight: FontWeight.w700, color: Colors.black)),
                    const Icon(
                      IconlyBroken.buy,
                      size: 22,
                      color: Colors.black,
                    ),
                  ],
                ),
                onPressed: () {},
              ),
            ),
            const SizedBox(width: 20),
            Expanded(
              child: PinkButtonWidget(
                height: 56,
                child: Text('Buy now',
                    style: GoogleFonts.poppins(
                      fontSize: 16,
                      fontWeight: FontWeight.w700,
                    )),
                onPressed: () {},
              ),
            ),
          ],
        ),
      ),
    );
  }
}
