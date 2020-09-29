import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:comfacundi_app/Logics/subsidyLogic.dart';
import 'package:comfacundi_app/Models/SubsidyClasses.dart';
import 'package:equatable/equatable.dart';
import 'package:meta/meta.dart';

part 'subsidy_event.dart';
part 'subsidy_state.dart';

class SubsidyBloc extends Bloc<SubsidyEvent, SubsidyState> {
  final SubsidyLogic logic;

  SubsidyBloc({@required this.logic});
  @override
  SubsidyState get initialState => Empty();

  @override
  Stream<SubsidyState> mapEventToState(
    SubsidyEvent event,
  ) async* {
    if (event is Load) {
      yield* _mapLoadToLoaded();
    }
  }

  Stream<SubsidyState> _mapLoadToLoaded() async* {
    try {
      yield Loading();
      Subsidy subsidy = await logic.loadData();
      yield Loaded(subsidy);
    } catch (e) {
      print(e);
      yield NoLoaded();
    }
  }
}
