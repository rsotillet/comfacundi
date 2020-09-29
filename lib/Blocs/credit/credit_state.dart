part of 'credit_bloc.dart';

abstract class CreditState extends Equatable {
  const CreditState();
  
  @override
  List<Object> get props => [];
}

class Empty extends CreditState {
  @override
  String toString() {
    return "Credit Empty";
  }
}

class NoLoaded extends CreditState {
  @override
  String toString() {
    return "Credit No Loaded";
  }
}

class Loading extends CreditState {
  @override
  String toString() {
    return "Credit Loading";
  }
}

class Loaded extends CreditState {
  final Credit credit;

  Loaded(this.credit);

  @override
  List<Object> get props => [credit];

  @override
  String toString() {
    return "Credit Loaded";
  }
}
