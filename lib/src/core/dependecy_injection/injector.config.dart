// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// InjectableConfigGenerator
// **************************************************************************

// ignore_for_file: unnecessary_lambdas
// ignore_for_file: lines_longer_than_80_chars
// coverage:ignore-file

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:dio/dio.dart' as _i4;
import 'package:get_it/get_it.dart' as _i1;
import 'package:injectable/injectable.dart' as _i2;

import '../../features/poke_list/poke_list.dart' as _i6;
import '../../features/poke_list/poke_list_module.dart' as _i10;
import '../../features/splash/pages/splash_page/ui/cubit/splash_page_cubit.dart'
    as _i7;
import '../../features/splash/splash_module.dart' as _i11;
import '../api/api_client.dart' as _i3;
import '../api/api_client_module.dart' as _i8;
import '../api/poke_api/poke_api_service.dart' as _i5;
import '../api/poke_api/poke_api_service_module.dart' as _i9;

extension GetItInjectableX on _i1.GetIt {
// initializes the registration of main-scope dependencies inside of GetIt
  _i1.GetIt init({
    String? environment,
    _i2.EnvironmentFilter? environmentFilter,
  }) {
    final gh = _i2.GetItHelper(
      this,
      environment,
      environmentFilter,
    );
    final apiClientModule = _$ApiClientModule();
    final pokeApiServiceModule = _$PokeApiServiceModule();
    final pokeListModule = _$PokeListModule();
    final splashPageModule = _$SplashPageModule();
    gh.lazySingleton<_i3.ApiClient>(() => apiClientModule.apiClient);
    gh.lazySingleton<_i4.Dio>(() => apiClientModule.dioDev);
    gh.lazySingleton<_i5.PokeApiService>(
        () => pokeApiServiceModule.pokeApiService);
    gh.factory<_i6.PokeListCubit>(() => pokeListModule.pokeListCubit);
    gh.lazySingleton<_i6.PokeListRemoteDatasource>(
        () => pokeListModule.pokeListRemoteDatasource);
    gh.lazySingleton<_i6.PokeListRepository>(
        () => pokeListModule.pokeListRepository);
    gh.factory<_i6.PokeListUseCase>(() => pokeListModule.pokeListUseCase);
    gh.factory<_i7.SplashPageCubit>(() => splashPageModule.splashPageCubit);
    return this;
  }
}

class _$ApiClientModule extends _i8.ApiClientModule {}

class _$PokeApiServiceModule extends _i9.PokeApiServiceModule {}

class _$PokeListModule extends _i10.PokeListModule {}

class _$SplashPageModule extends _i11.SplashPageModule {}
