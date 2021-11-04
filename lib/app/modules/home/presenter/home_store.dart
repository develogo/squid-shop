import 'package:flutter_triple/flutter_triple.dart';
import 'package:squidgame/app/modules/product_detail/presenter/product_detail_arguments.dart';

class HomeStore extends NotifierStore<Exception, int> {
  HomeStore() : super(0);

  final List<ProductDetailArguments> itens = [
    ProductDetailArguments(name: 'Supervisor1 toy', assetImage: 'asset/image/avatar4.png'),
    ProductDetailArguments(name: 'Front man toy', assetImage: 'asset/image/avatar1.png'),
    ProductDetailArguments(name: 'Kang Sae-byeok toy', assetImage: 'asset/image/avatar2.png'),
    ProductDetailArguments(name: 'Doll toy', assetImage: 'asset/image/avatar3.png'),
    ProductDetailArguments(name: 'Supervisor2 toy', assetImage: 'asset/image/avatar5.png'),
    ProductDetailArguments(name: 'Supervisor3 toy', assetImage: 'asset/image/avatar6.png'),
  ];

  final List<ProductDetailArguments> itens2 = [
    ProductDetailArguments(name: 'Collector outfit', assetImage: 'asset/image/recent1.png'),
    ProductDetailArguments(name: 'Doll', assetImage: 'asset/image/recent2.png'),
  ];
}
