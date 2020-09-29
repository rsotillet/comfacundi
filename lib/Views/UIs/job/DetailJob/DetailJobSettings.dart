import 'package:comfacundi_app/Models/JobClasses.dart';
import 'package:meta/meta.dart';

class DetailJobSettings {
  final String title;
  final String subtitle;
  final String detail;
  final String hero;
  final String icon;
  final List<Child> child;
  final String url;

  DetailJobSettings(
      {@required this.child,
      @required this.url,
      @required this.subtitle,
      @required this.detail,
      @required this.hero,
      @required this.icon,
      @required this.title});
}
