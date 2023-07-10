part of 'hello_bloc.dart';

abstract class HelloState extends Equatable {
  const HelloState();

  @override
  List<Object> get props => [];
}

class HelloInitialState extends HelloState {}

class SaveHelloState extends HelloState {
  final String message;

  SaveHelloState(this.message);
}

class GetHelloState extends HelloState {
  final String message;

  GetHelloState(this.message);
}
