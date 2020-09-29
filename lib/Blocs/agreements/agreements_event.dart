part of 'agreements_bloc.dart';

abstract class AgreementsEvent extends Equatable {
  const AgreementsEvent();

  @override
  List<Object> get props => [];
}

class Load extends AgreementsEvent {}