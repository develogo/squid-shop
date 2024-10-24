import 'package:flutter/material.dart';
import 'package:squidgame/di/di_setup.dart';

import 'app/app_widget.dart';

void main() {
  configureDependencies();
  runApp(const AppWidget());
}
