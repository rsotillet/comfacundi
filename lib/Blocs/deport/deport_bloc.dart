import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:comfacundi_app/Logics/deportLogic.dart';
import 'package:comfacundi_app/Models/DeportClasses.dart';
import 'package:equatable/equatable.dart';
import 'package:meta/meta.dart';

part 'deport_event.dart';
part 'deport_state.dart';

class DeportBloc extends Bloc<DeportEvent, DeportState> {
  final DeportLogic logic;

  DeportBloc({@required this.logic});
  @override
  DeportState get initialState => Empty();

  @override
  Stream<DeportState> mapEventToState(
    DeportEvent event,
  ) async* {
    if (event is Load) {
      yield* _mapLoadToLoaded();
    }
  }

  Stream<DeportState> _mapLoadToLoaded() async* {
    try {
      yield Loading();
      Deport deport = await logic.loadData();
      yield Loaded(deport);
    } catch (e) {
      print(e);
      yield NoLoaded();
    }
  }
}
