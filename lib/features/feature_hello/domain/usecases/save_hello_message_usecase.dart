
import 'package:middle_east/features/feature_hello/domain/repository/hello_repository.dart';

class SaveHelloMessageUsecase {
  final HelloRepository helloRepository;

  SaveHelloMessageUsecase(this.helloRepository);

  call(String message) {
    helloRepository.saveHelloMessage(message);
  }
}
