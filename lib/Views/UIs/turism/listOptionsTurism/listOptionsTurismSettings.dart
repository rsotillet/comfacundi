import 'package:comfacundi_app/Models/TurismClasses.dart';
import 'package:meta/meta.dart';

class ListOptionsTurismSettings {
  final List<Children> children;
  final String subtitle;
  final String icon;
  final String hero;
  final bool direct;

  ListOptionsTurismSettings(
      {@required this.direct,
      this.icon,
      this.hero,
      this.subtitle,
      this.children});
}

class ListOptionsTurismSettings2 {
  final List<Hotels> children;
  final String subtitle;
  final String icon;
  final String hero;
  final bool direct;

  ListOptionsTurismSettings2(
      {@required this.direct,
      this.icon,
      this.hero,
      this.subtitle,
      this.children});
}
