part of 'deport_bloc.dart';

abstract class DeportState extends Equatable {
  const DeportState();
  
  @override
  List<Object> get props => [];
}

class Empty extends DeportState {
  @override
  String toString() {
    return "Deport Empty";
  }
}

class NoLoaded extends DeportState {
  @override
  String toString() {
    return "Deport No Loaded";
  }
}

class Loading extends DeportState {
  @override
  String toString() {
    return "Deport Loading";
  }
}

class Loaded extends DeportState {
  final Deport deport;

  Loaded(this.deport);

  @override
  List<Object> get props => [deport];

  @override
  String toString() {
    return "Deport Loaded";
  }
}
