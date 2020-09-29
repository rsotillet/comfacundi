part of 'education_bloc.dart';

abstract class EducationState extends Equatable {
  const EducationState();

  @override
  List<Object> get props => [];
}

class Empty extends EducationState {
  @override
  String toString() {
    return "Education Empty";
  }
}

class NoLoaded extends EducationState {
  @override
  String toString() {
    return "Education No Loaded";
  }
}

class Loading extends EducationState {
  @override
  String toString() {
    return "Education Loading";
  }
}

class Loaded extends EducationState {
  final Education education;

  Loaded(this.education);

  @override
  List<Object> get props => [education];

  @override
  String toString() {
    return "Education Loaded";
  }
}
