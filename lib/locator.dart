import 'package:get_it/get_it.dart';
import 'package:middle_east/features/feature_hello/data/data_source/local/shared_preference_manager.dart';
import 'package:middle_east/features/feature_hello/data/data_source/remote/api_provider.dart';
import 'package:middle_east/features/feature_hello/data/repository/hello_repository_impl.dart';
import 'package:middle_east/features/feature_hello/domain/repository/hello_repository.dart';
import 'package:middle_east/features/feature_hello/domain/usecases/get_hello_message_usecase.dart';
import 'package:middle_east/features/feature_hello/domain/usecases/save_hello_message_usecase.dart';
import 'package:middle_east/features/feature_hello/presentation/bloc/hello/hello_bloc.dart';

GetIt locator = GetIt.instance;

setup() {
  locator.registerSingleton<ApiProvider>(ApiProvider());
  locator.registerSingleton<SharedPreferenceManager>(SharedPreferenceManager());

  locator.registerSingleton<HelloRepository>(HelloRepositoryImpl(locator()));

  locator.registerSingleton<SaveHelloMessageUsecase>(
      SaveHelloMessageUsecase(locator()));
  locator.registerSingleton<GetHelloMessageUsecase>(
      GetHelloMessageUsecase(locator()));

  locator.registerSingleton<HelloBloc>(HelloBloc(locator(), locator()));
}
