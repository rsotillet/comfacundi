part of 'subsidy_bloc.dart';

abstract class SubsidyState extends Equatable {
  const SubsidyState();
  
  @override
  List<Object> get props => [];
}

class Empty extends SubsidyState {
  @override
  String toString() {
    return "Subsidy Empty";
  }
}

class NoLoaded extends SubsidyState {
  @override
  String toString() {
    return "Subsidy No Loaded";
  }
}

class Loading extends SubsidyState {
  @override
  String toString() {
    return "Subsidy Loading";
  }
}

class Loaded extends SubsidyState {
  final Subsidy subsidy;

  Loaded(this.subsidy);

  @override
  List<Object> get props => [subsidy];

  @override
  String toString() {
    return "Subsidy Loaded";
  }
}
