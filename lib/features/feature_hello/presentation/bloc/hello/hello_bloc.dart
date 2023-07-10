import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';
import 'package:middle_east/features/feature_hello/domain/usecases/get_hello_message_usecase.dart';
import 'package:middle_east/features/feature_hello/domain/usecases/save_hello_message_usecase.dart';

part 'hello_event.dart';
part 'hello_state.dart';

class HelloBloc extends Bloc<HelloEvent, HelloState> {
  final SaveHelloMessageUsecase saveHelloMessageUsecase;
  final GetHelloMessageUsecase getHelloMessageUsecase;
  HelloBloc(this.saveHelloMessageUsecase, this.getHelloMessageUsecase)
      : super(HelloInitialState()) {
    on<HelloEvent>((event, emit) async {
      if (event is GetHelloMessageEvent) {
        var message = await getHelloMessageUsecase();
        emit(GetHelloState(message));
      } else if (event is SaveHelloMessageEvent) {
        await saveHelloMessageUsecase(event.message);
        emit(SaveHelloState(event.message));
      } else if (event is InitHelloMessageEvent) {
        emit(HelloInitialState());
      }
    });
  }
}
