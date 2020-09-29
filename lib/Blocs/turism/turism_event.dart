part of 'turism_bloc.dart';

abstract class TurismEvent extends Equatable {
  const TurismEvent();

  @override
  List<Object> get props => [];
}

class Load extends TurismEvent {}
