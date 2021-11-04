import 'package:flutter_test/flutter_test.dart';
import 'package:squidgame/app/modules/product_detail/presenter/product_detail_store.dart';

void main() {
  late ProductDetailStore store;

  setUpAll(() {
    store = ProductDetailStore();
  });

  test('increment count', () async {
    expect(store.state, equals(0));
    store.update(store.state + 1);
    expect(store.state, equals(1));
  });
}
