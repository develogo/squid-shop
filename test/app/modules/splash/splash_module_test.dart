import 'package:flutter_modular/flutter_modular.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:modular_test/modular_test.dart';
import 'package:squidgame/app/modules/splash/splash_module.dart';

void main() {
  setUpAll(() {
    initModule(SplashModule());
  });
}
