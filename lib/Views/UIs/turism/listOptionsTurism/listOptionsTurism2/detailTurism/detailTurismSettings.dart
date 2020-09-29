import 'package:comfacundi_app/Models/TurismClasses.dart';
import 'package:flutter/cupertino.dart';
import 'package:meta/meta.dart';

class DetailTurismSettings {
  final Child child;
  final bool withTitle;
  final String hero;
  DetailTurismSettings({@required this.hero, @required this.withTitle,this.child});
}
