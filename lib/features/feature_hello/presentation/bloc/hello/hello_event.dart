part of 'hello_bloc.dart';

abstract class HelloEvent extends Equatable {
  const HelloEvent();

  @override
  List<Object> get props => [];
}

class InitHelloMessageEvent extends HelloEvent {}

class GetHelloMessageEvent extends HelloEvent {}

class SaveHelloMessageEvent extends HelloEvent {
  final String message;

  const SaveHelloMessageEvent(this.message);
}
