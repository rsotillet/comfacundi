import 'package:comfacundi_app/Models/LivingClasses.dart';
import 'package:meta/meta.dart';

class DetailLivingSettings {
 final String title;
  final String detail;
  final String hero;
  final String icon;
  final String url;
  final List<Table1> table1;
  final List<Table2> table2;
  final String detail2;
  final List<String> imgs;
  final bool withbg;

  DetailLivingSettings(
      {@required this.url,
      @required this.table1,
      @required this.table2,
      @required this.detail2,
      @required this.withbg,
      @required this.imgs,
      @required this.hero,
      @required this.icon,
      @required this.detail,
      @required this.title});
}
