import 'package:device_frame/device_frame.dart';
import 'package:flutter/material.dart';
import 'package:squidgame/app/modules/home/presenter/home_page.dart';
import 'package:squidgame/app/modules/product_detail/presenter/product_detail_arguments.dart';
import 'package:squidgame/app/modules/product_detail/presenter/product_detail_page.dart';
import 'package:squidgame/app/modules/splash/presenter/splash_page.dart';

class AppWidget extends StatelessWidget {
  const AppWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Squid Game',
      theme: ThemeData(
        fontFamily: 'GameOfSquids',
      ),
      routes: {
        '/': (context) => const SplashPage(),
        '/home': (context) => const HomePage(),
      },
      onGenerateRoute: (settings) {
        if (settings.name == '/product') {
          final args = settings.arguments as ProductDetailArguments;
          return MaterialPageRoute(
              builder: (context) => ProductDetailPage(args: args));
        }
        return null;
      },
      builder: (context, child) => DeviceFrame(
        device: Devices.ios.iPhone13ProMax,
        orientation: Orientation.portrait,
        isFrameVisible: true,
        screen: child!,
      ),
    );
  }
}
