import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:comfacundi_app/Logics/educationLogic.dart';
import 'package:comfacundi_app/Models/EducationClasses.dart';
import 'package:equatable/equatable.dart';
import 'package:meta/meta.dart';

part 'education_event.dart';
part 'education_state.dart';

class EducationBloc extends Bloc<EducationEvent, EducationState> {
  final EducationLogic logic;

  EducationBloc({@required this.logic});
  @override
  EducationState get initialState => Empty();

  @override
  Stream<EducationState> mapEventToState(
    EducationEvent event,
  ) async* {
    if (event is Load) {
      yield* _mapLoadToLoaded();
    }
  }

  Stream<EducationState> _mapLoadToLoaded() async* {
    try {
      yield Loading();
      Education education = await logic.loadData();
      yield Loaded(education);
    } catch (e) {
      print(e);
      yield NoLoaded();
    }
  }
}
