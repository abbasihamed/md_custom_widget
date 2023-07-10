import 'package:equatable/equatable.dart';

class HelloEntity extends Equatable {
  final String? message;

  HelloEntity({this.message});

  @override
  List<Object> get props => [];
}
