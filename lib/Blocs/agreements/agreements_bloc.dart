import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:comfacundi_app/Logics/agreementsLogic.dart';
import 'package:comfacundi_app/Models/AgreementsClasses.dart';
import 'package:equatable/equatable.dart';
import 'package:meta/meta.dart';

part 'agreements_event.dart';
part 'agreements_state.dart';

class AgreementsBloc extends Bloc<AgreementsEvent, AgreementsState> {
  final AgreementsLogic logic;

  AgreementsBloc({@required this.logic});
  @override
  AgreementsState get initialState => Empty();

  @override
  Stream<AgreementsState> mapEventToState(
    AgreementsEvent event,
  ) async* {
    if (event is Load) {
      yield* _mapLoadToLoaded();
    }
  }

  Stream<AgreementsState> _mapLoadToLoaded() async* {
    try {
      yield Loading();
      Agreements agreements = await logic.loadData();
      yield Loaded(agreements);
    } catch (e) {
      print(e);
      yield NoLoaded();
    }
  }
}
