part of 'turism_bloc.dart';

abstract class TurismState extends Equatable {
  const TurismState();
  @override
  List<Object> get props => [];
}

class Empty extends TurismState {
  @override
  String toString() {
    return "Turism Empty";
  }
}

class NoLoaded extends TurismState {
  @override
  String toString() {
    return "Turism No Loaded";
  }
}

class Loading extends TurismState {
  @override
  String toString() {
    return "Turism Loading";
  }
}

class Loaded extends TurismState {
  final Turism turism;

  Loaded(this.turism);

  @override
  List<Object> get props => [turism];

  @override
  String toString() {
    return "Turism Loaded";
  }
}
