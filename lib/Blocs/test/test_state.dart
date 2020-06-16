part of 'test_bloc.dart';

abstract class TestState extends Equatable {
  const TestState();
}

class TestInitial extends TestState {
  @override
  List<Object> get props => [];
}

class Incremented extends TestState {
  final int number;

  Incremented({@required this.number});

  @override
  List<Object> get props => [number];

  @override
  String toString() {
    return 'Incremented to $number';
  }
}
