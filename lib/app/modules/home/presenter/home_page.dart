import 'package:flutter/material.dart';
import 'package:flutter_modular/flutter_modular.dart';
import 'package:flutter_triple/flutter_triple.dart';
import 'package:squidgame/app/modules/home/presenter/components/app_bar_home_widget.dart';
import 'package:squidgame/app/modules/home/presenter/components/bouncer_list.dart';
import 'package:squidgame/app/modules/home/presenter/components/nav_bar_widget.dart';
import 'package:squidgame/app/modules/home/presenter/components/recent_order_cart_widget.dart';
import 'package:squidgame/app/modules/home/presenter/components/running_drop_widget.dart';
import 'package:squidgame/app/modules/home/presenter/components/tile_divisor_widget.dart';
import 'package:squidgame/app/modules/product_detail/presenter/product_detail_arguments.dart';
import 'components/recommended_cart_widget.dart';
import 'home_store.dart';

class HomePage extends StatefulWidget {
  final String title;
  const HomePage({Key? key, this.title = "Home"}) : super(key: key);

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends ModularState<HomePage, HomeStore> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
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
                    onPressed: () => Modular.to.pushNamed(
                      '/product/',
                      arguments: ProductDetailArguments(
                        name: store.itens[p1].name,
                        assetImage: store.itens[p1].assetImage,
                      ),
                    ),
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
      bottomNavigationBar: NavBarWidget(),
    );
  }
}
