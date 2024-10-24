import 'package:flutter/cupertino.dart';
import 'package:flutter_triple/flutter_triple.dart';
import 'package:injectable/injectable.dart';

@injectable
class ProductDetailStore extends NotifierStore<Exception, int> {
  ProductDetailStore() : super(0);

  final ValueNotifier<int> qty = ValueNotifier<int>(0);

  void increment() => qty.value++;

  void decrement() => qty.value == 0 ? qty : qty.value--;
}
