import 'package:comfacundi_app/Models/EducationClasses.dart';
import 'package:meta/meta.dart';

class DetailEducationSettings {
  final String title;
  final String subtitle;
  final String detail;
  final String url;
  final String hero;
  final String icon;
  final String extraImg;
  final List<Imgs> imgs;

  DetailEducationSettings(
      {@required this.subtitle,
      @required this.imgs,
      @required this.extraImg,
      @required this.detail,
      @required this.url,
      @required this.hero,
      @required this.icon,
      @required this.title});
}
