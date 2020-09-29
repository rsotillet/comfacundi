import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:comfacundi_app/Logics/livingLogic.dart';
import 'package:comfacundi_app/Models/LivingClasses.dart';
import 'package:equatable/equatable.dart';
import 'package:meta/meta.dart';

part 'living_event.dart';
part 'living_state.dart';

class LivingBloc extends Bloc<LivingEvent, LivingState> {
  final LivingLogic logic;

  LivingBloc({@required this.logic});
  @override
  LivingState get initialState => Empty();

  @override
  Stream<LivingState> mapEventToState(
    LivingEvent event,
  ) async* {
    if (event is Load) {
      yield* _mapLoadToLoaded();
    }
  }

  Stream<LivingState> _mapLoadToLoaded() async* {
    try {
      yield Loading();
      Living living = await logic.loadData();
      yield Loaded(living);
    } catch (e) {
      print(e);
      yield NoLoaded();
    }
  }
}
