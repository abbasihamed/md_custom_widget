
import 'package:middle_east/features/feature_hello/data/data_source/local/shared_preference_manager.dart';
import 'package:middle_east/features/feature_hello/domain/repository/hello_repository.dart';

class HelloRepositoryImpl extends HelloRepository {
  final SharedPreferenceManager sharedPreferenceManager;

  HelloRepositoryImpl(this.sharedPreferenceManager);

  @override
  saveHelloMessage(String message) {
    return sharedPreferenceManager.saveHelloWorld(message);
  }

  @override
  getHelloMessage() {
    return sharedPreferenceManager.getHelloWorld();
  }
}
