import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:comfacundi_app/Logics/creditLogic.dart';
import 'package:comfacundi_app/Models/CreditClasses.dart';
import 'package:equatable/equatable.dart';
import 'package:meta/meta.dart';

part 'credit_event.dart';
part 'credit_state.dart';

class CreditBloc extends Bloc<CreditEvent, CreditState> {
  final CreditLogic logic;

  CreditBloc({@required this.logic});
  @override
  CreditState get initialState => Empty();

  @override
  Stream<CreditState> mapEventToState(
    CreditEvent event,
  ) async* {
    if (event is Load) {
      yield* _mapLoadToLoaded();
    }
  }

  Stream<CreditState> _mapLoadToLoaded() async* {
    try {
      yield Loading();
      Credit credit = await logic.loadData();
      yield Loaded(credit);
    } catch (e) {
      print(e);
      yield NoLoaded();
    }
  }
}
