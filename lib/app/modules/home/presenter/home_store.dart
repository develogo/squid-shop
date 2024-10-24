import 'package:flutter_triple/flutter_triple.dart';
import 'package:injectable/injectable.dart';
import 'package:squidgame/app/modules/product_detail/presenter/product_detail_arguments.dart';

@injectable
class HomeStore extends NotifierStore<Exception, int> {
  HomeStore() : super(0);

  final List<ProductDetailArguments> itens = [
    ProductDetailArguments(
        name: 'Supervisor1 toy', assetImage: 'assets/images/avatar4.png'),
    ProductDetailArguments(
        name: 'Front man toy', assetImage: 'assets/images/avatar1.png'),
    ProductDetailArguments(
        name: 'Kang Sae-byeok toy', assetImage: 'assets/images/avatar2.png'),
    ProductDetailArguments(
        name: 'Doll toy', assetImage: 'assets/images/avatar3.png'),
    ProductDetailArguments(
        name: 'Supervisor2 toy', assetImage: 'assets/images/avatar5.png'),
    ProductDetailArguments(
        name: 'Supervisor3 toy', assetImage: 'assets/images/avatar6.png'),
  ];

  final List<ProductDetailArguments> itens2 = [
    ProductDetailArguments(
        name: 'Collector outfit', assetImage: 'assets/images/recent1.png'),
    ProductDetailArguments(
        name: 'Doll', assetImage: 'assets/images/recent2.png'),
  ];
}
