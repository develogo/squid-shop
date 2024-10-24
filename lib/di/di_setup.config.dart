// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// InjectableConfigGenerator
// **************************************************************************

// ignore_for_file: type=lint
// coverage:ignore-file

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:get_it/get_it.dart' as _i174;
import 'package:injectable/injectable.dart' as _i526;
import 'package:squidgame/app/modules/home/presenter/home_store.dart' as _i952;
import 'package:squidgame/app/modules/product_detail/presenter/product_detail_store.dart'
    as _i833;

extension GetItInjectableX on _i174.GetIt {
// initializes the registration of main-scope dependencies inside of GetIt
  _i174.GetIt init({
    String? environment,
    _i526.EnvironmentFilter? environmentFilter,
  }) {
    final gh = _i526.GetItHelper(
      this,
      environment,
      environmentFilter,
    );
    gh.factory<_i952.HomeStore>(() => _i952.HomeStore());
    gh.factory<_i833.ProductDetailStore>(() => _i833.ProductDetailStore());
    return this;
  }
}
