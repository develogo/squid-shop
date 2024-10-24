import 'package:flutter/material.dart';
import 'package:squidgame/app/modules/home/presenter/components/app_bar_home_widget.dart';
import 'package:squidgame/app/modules/home/presenter/components/bouncer_list.dart';
import 'package:squidgame/app/modules/home/presenter/components/nav_bar_widget.dart';
import 'package:squidgame/app/modules/home/presenter/components/recent_order_cart_widget.dart';
import 'package:squidgame/app/modules/home/presenter/components/tile_divisor_widget.dart';
import 'package:squidgame/app/modules/product_detail/presenter/product_detail_arguments.dart';
import 'package:squidgame/di/di_setup.dart';

import 'components/recommended_cart_widget.dart';
import 'home_store.dart';

class HomePage extends StatefulWidget {
  final String title;
  const HomePage({super.key, this.title = "Home"});

  @override
  State<HomePage> createState() => HomePageState();
}

class HomePageState extends State<HomePage> {
  final HomeStore store = getIt<HomeStore>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey.shade100,
      body: Column(
        children: [
          const HomeAppBarWidget(),
          Expanded(
            child: ListView(
              shrinkWrap: true,
              physics: const BouncingScrollPhysics(),
              children: [
                const TileDivisorWidget(title: 'Recommended for you'),
                BouncerList(
                  itemCount: 6,
                  height: 350,
                  itemBuilder: (p0, p1) => RecommendedCardWidget(
                    name: store.itens[p1].name,
                    image: store.itens[p1].assetImage,
                    onPressed: () => Navigator.pushNamed(
                      context,
                      '/product',
                      arguments: ProductDetailArguments(
                        name: store.itens[p1].name,
                        assetImage: store.itens[p1].assetImage,
                      ),
                    ),
                  ),
                ),
                const TileDivisorWidget(title: 'Most popular'),
                BouncerList(
                  itemCount: store.itens2.length,
                  height: 160,
                  itemBuilder: (p0, p1) => RecentOrderCardWidget(
                    title: store.itens2[p1].name,
                    asset: store.itens2[p1].assetImage,
                  ),
                ),
                const TileDivisorWidget(title: 'Recent orders'),
                BouncerList(
                  itemCount: store.itens2.length,
                  height: 160,
                  itemBuilder: (p0, p1) => RecentOrderCardWidget(
                    title: store.itens2[p1].name,
                    asset: store.itens2[p1].assetImage,
                  ),
                ),
              ],
            ),
          )
        ],
      ),
      bottomNavigationBar: const NavBarWidget(),
    );
  }
}
