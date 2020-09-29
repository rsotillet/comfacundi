import 'package:comfacundi_app/Models/DeportClasses.dart';
import 'package:meta/meta.dart';

class ListOptionDeport2Settings {
  final String title;
  final String description;
  final List<Children> children;
  final String hero;
  final String icon;

  ListOptionDeport2Settings(
      {@required this.title,
      @required this.children,
      @required this.description,
      @required this.hero,
      @required this.icon});
}
