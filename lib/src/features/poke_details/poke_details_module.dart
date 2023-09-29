import 'package:injectable/injectable.dart';
import 'package:poke_bloc_getit_clean/src/core/api/poke_api/poke_api_service.dart';
import 'package:poke_bloc_getit_clean/src/core/dependecy_injection/dependecy_injection.dart';

import 'datasources/datasources.dart';
import 'repositories/repositories.dart';
import 'usecases/poke_details_usecase.dart';
import 'pages/poke_detail/ui/cubit/poke_details_cubit.dart';

@module
abstract class PokeDetailsModule {
  @lazySingleton
  PokeDetailsRemoteDataSource get pokeDetailsRemoteDataSource =>
      PokeDetailsRemoteDataSourceImpl(pokeApiService: getIt<PokeApiService>());

  @lazySingleton
  PokeDetailsRepository get pokeDetailsRepository => PokeDetailsRepositoryImpl(
      pokeDetailsRemoteDataSource: getIt<PokeDetailsRemoteDataSource>());

  @injectable
  PokeDetailsUseCase get podeDetailsUseCase =>
      PokeDetailsUseCase(pokeDetailsRepository: getIt<PokeDetailsRepository>());

  @injectable
  PokeDetailsCubit get podeDetailsCubit =>
      PokeDetailsCubit(pokeDetailsUseCase: getIt<PokeDetailsUseCase>());
}
