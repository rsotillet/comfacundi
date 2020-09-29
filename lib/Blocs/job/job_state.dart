part of 'job_bloc.dart';

abstract class JobState extends Equatable {
  const JobState();
  
  @override
  List<Object> get props => [];
}

class Empty extends JobState {
  @override
  String toString() {
    return "Job Empty";
  }
}

class NoLoaded extends JobState {
  @override
  String toString() {
    return "Job No Loaded";
  }
}

class Loading extends JobState {
  @override
  String toString() {
    return "Job Loading";
  }
}

class Loaded extends JobState {
  final Job job;

  Loaded(this.job);

  @override
  List<Object> get props => [job];

  @override
  String toString() {
    return "Job Loaded";
  }
}
