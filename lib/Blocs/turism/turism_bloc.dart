import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:comfacundi_app/Logics/turismLogic.dart';
import 'package:comfacundi_app/Models/TurismClasses.dart';
import 'package:equatable/equatable.dart';
import 'package:meta/meta.dart';

part 'turism_event.dart';
part 'turism_state.dart';

class TurismBloc extends Bloc<TurismEvent, TurismState> {
  final TurismLogic logic;

  TurismBloc({@required this.logic});
  @override
  TurismState get initialState => Empty();

  @override
  Stream<TurismState> mapEventToState(
    TurismEvent event,
  ) async* {
    if (event is Load) {
      yield* _mapLoadToLoaded();
    }
  }

  Stream<TurismState> _mapLoadToLoaded() async* {
    try {
      yield Loading();
      Turism turism = await logic.loadData();
      yield Loaded(turism);
    } catch (e) {
      print(e);
      yield NoLoaded();
    }
  }
}
