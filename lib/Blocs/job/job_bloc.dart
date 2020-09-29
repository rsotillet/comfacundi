import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:comfacundi_app/Logics/jobLogic.dart';
import 'package:comfacundi_app/Models/JobClasses.dart';
import 'package:equatable/equatable.dart';
import 'package:meta/meta.dart';

part 'job_event.dart';
part 'job_state.dart';

class JobBloc extends Bloc<JobEvent, JobState> {
  final JobLogic logic;

  JobBloc({@required this.logic});
  @override
  JobState get initialState => Empty();

  @override
  Stream<JobState> mapEventToState(
    JobEvent event,
  ) async* {
    if (event is Load) {
      yield* _mapLoadToLoaded();
    }
  }

  Stream<JobState> _mapLoadToLoaded() async* {
    try {
      yield Loading();
      Job job = await logic.loadData();
      yield Loaded(job);
    } catch (e) {
      print(e);
      yield NoLoaded();
    }
  }
}
