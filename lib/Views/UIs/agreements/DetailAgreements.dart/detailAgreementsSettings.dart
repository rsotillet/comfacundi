import 'package:comfacundi_app/Models/AgreementsClasses.dart';
import 'package:meta/meta.dart';

class DetailAgreementsSettings {
  final String hero;
  final String icon;
  final String title;
  final List<Children> children;

  DetailAgreementsSettings({
    @required this.hero,
    @required this.icon,
    @required this.children,
    @required this.title,
  });
}
