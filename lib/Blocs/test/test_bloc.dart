import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:comfacundi_app/Logics/testLogic.dart';
import 'package:equatable/equatable.dart';
import 'package:flutter/cupertino.dart';

part 'test_event.dart';
part 'test_state.dart';

class TestBloc extends Bloc<TestEvent, TestState> {
  final TestLogic testLogic;

  TestBloc({@required this.testLogic});

  @override
  TestState get initialState => TestInitial();

  @override
  Stream<TestState> mapEventToState(
    TestEvent event,
  ) async* {
    if (event is Increment) {
      yield* _mapToIncremented(event.number);
    }
  }

  Stream<TestState> _mapToIncremented(int number) async* {
    yield Incremented(number: testLogic.increment(number: number));
  }
}
