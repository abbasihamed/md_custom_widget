
import 'package:middle_east/features/feature_hello/domain/repository/hello_repository.dart';

class GetHelloMessageUsecase {
  final HelloRepository helloRepository;

  GetHelloMessageUsecase(this.helloRepository);

  Future<String> call() async {
    return await helloRepository.getHelloMessage();
  }
}
