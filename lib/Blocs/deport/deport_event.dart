part of 'deport_bloc.dart';

abstract class DeportEvent extends Equatable {
  const DeportEvent();

  @override
  List<Object> get props => [];
}

class Load extends DeportEvent {}