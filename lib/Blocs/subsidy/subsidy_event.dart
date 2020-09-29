part of 'subsidy_bloc.dart';

abstract class SubsidyEvent extends Equatable {
  const SubsidyEvent();

  @override
  List<Object> get props => [];
}

class Load extends SubsidyEvent {}