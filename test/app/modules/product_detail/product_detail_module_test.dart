import 'package:flutter_modular/flutter_modular.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:modular_test/modular_test.dart';
import 'package:squidgame/app/modules/product_detail/product_detail_module.dart';

void main() {
  setUpAll(() {
    initModule(ProductDetailModule());
  });
}
