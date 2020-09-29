part of 'living_bloc.dart';

abstract class LivingState extends Equatable {
  const LivingState();
  
  @override
  List<Object> get props => [];
}

class Empty extends LivingState {
  @override
  String toString() {
    return "Living Empty";
  }
}

class NoLoaded extends LivingState {
  @override
  String toString() {
    return "Living No Loaded";
  }
}

class Loading extends LivingState {
  @override
  String toString() {
    return "Living Loading";
  }
}

class Loaded extends LivingState {
  final Living living;

  Loaded(this.living);

  @override
  List<Object> get props => [Living];

  @override
  String toString() {
    return "Living Loaded";
  }
}
