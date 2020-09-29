import 'package:comfacundi_app/Views/Partials/comfacundiBase.dart';
import 'package:comfacundi_app/Views/UIs/subsidy/DetailSubsidy/DetailSubsidySettings.dart';
import 'package:comfacundi_app/Views/UIs/subsidy/ListOptionSubsidySettings.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

import 'ListOptionSubsidy2/ListOptionSubsidy2Settings.dart';

class ListOptionSubsidyPage extends StatelessWidget {
  final ListOptionSubsidySettings settings;
  ListOptionSubsidyPage({
    Key key,
    @required this.settings,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Base(
      title: '¡LOS MEJORES SUBSIDIOS PARA TI!',
      icon: 'assets/svg/subsidio.svg',
      tag: 'subsidio',
      headerColor: Theme.of(context).primaryColorDark,
      bottomBarColor: Theme.of(context).primaryColorDark,
      child: Padding(
        padding: const EdgeInsets.all(50.0),
        child: Card(
          child: ListView(padding: EdgeInsets.zero, children: <Widget>[
            ...settings.subsidy.items.map((element) {
              return Column(
                mainAxisSize: MainAxisSize.min,
                children: <Widget>[
                  ListTile(
                    onTap: () {
                      if (element.children.length > 1) {
                        Navigator.pushNamed(context, '/ListOptionSubsidy2',
                            arguments: ListOptionSubsidy2Settings(
                                detail: element.detail,
                                children: element.children,
                                icon: element.icon,
                                title: element.subtitle,
                                hero: element.tag));
                      } else {
                        Navigator.pushNamed(context, '/detailSubsidy',
                            arguments: DetailSubsidySettings(
                                imgs: [],
                                detail2: null,
                                table1: [],
                                table2: [],
                                withbg: element.withBg,
                                url: element.url,
                                detail: element.detail,
                                icon: element.icon,
                                title: element.subtitle,
                                hero: element.tag));
                      }
                    },
                    title: Text(
                      element.title.toUpperCase(),
                      style: TextStyle(
                        color: Theme.of(context).primaryColorDark,
                      ),
                    ),
                    trailing: Container(
                      height: 50,
                      width: 50,
                      child: Hero(
                        tag: element.tag,
                        child: SvgPicture.asset(
                          element.icon,
                          allowDrawingOutsideViewBox: true,
                        ),
                      ),
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.symmetric(horizontal: 8.0),
                    child: Divider(
                      color: Theme.of(context).canvasColor,
                    ),
                  ),
                ],
              );
            }).toList(),
          ]),
        ),
      ),
    );
  }
}
