import 'package:get_it/get_it.dart';
import 'package:injectable/injectable.dart';
import 'package:squidgame/di/di_setup.config.dart';

final getIt = GetIt.instance;

@InjectableInit()
configureDependencies() => getIt.init();
