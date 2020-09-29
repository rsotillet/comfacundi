part of 'agreements_bloc.dart';

abstract class AgreementsState extends Equatable {
  const AgreementsState();
  
  @override
  List<Object> get props => [];
}

class Empty extends AgreementsState {
  @override
  String toString() {
    return "Agreements Empty";
  }
}

class NoLoaded extends AgreementsState {
  @override
  String toString() {
    return "Agreements No Loaded";
  }
}

class Loading extends AgreementsState {
  @override
  String toString() {
    return "Agreements Loading";
  }
}

class Loaded extends AgreementsState {
  final Agreements agreements;

  Loaded(this.agreements);

  @override
  List<Object> get props => [agreements];

  @override
  String toString() {
    return "Agreements Loaded";
  }
}
