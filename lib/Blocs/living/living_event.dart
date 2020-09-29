part of 'living_bloc.dart';

abstract class LivingEvent extends Equatable {
  const LivingEvent();

  @override
  List<Object> get props => [];
}

class Load extends LivingEvent {}