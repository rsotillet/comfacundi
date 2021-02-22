import 'package:comfacundi_app/Views/Partials/comfacundiBase.dart';
import 'package:comfacundi_app/Views/UIs/deport/ListOptionDeportSettings.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

import 'ListOptionDeport2/listOptionsDeport2Settings.dart';
import 'detailDeport1/DetailDeport1Settings.dart';

class ListOptionDeportPage extends StatelessWidget {
  final ListOptionDeportSettings settings;
  ListOptionDeportPage({
    Key key,
    @required this.settings,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Base(
      title: '¡TU BIENESTAR ES IMPORTANTE!',
      headerColor: Theme.of(context).primaryColorDark,
      bottomBarColor: Theme.of(context).primaryColorDark,
      icon: 'assets/svg/futbol.svg',
      tag: 'deporte',
      child: Padding(
        padding: const EdgeInsets.all(50.0),
        child: Card(
          child: ListView(padding: EdgeInsets.zero, children: <Widget>[
            ...settings.deport.items.map((element) {
              return Column(
                mainAxisSize: MainAxisSize.min,
                children: <Widget>[
                  ListTile(
                    onTap: () {
                      if (element.children == null) {
                        Navigator.pushNamed(context, '/detailDeport1',
                            arguments: DetailDeport1Settings(
                                title: element.subtitle,
                                icon: element.icon,
                                hero: element.tag,
                                url: element.url,
                                description: element.detail));
                      } else {
                        Navigator.pushNamed(context, '/listOptionDeport2',
                            arguments: ListOptionDeport2Settings(
                                children: element.children,
                                title: element.subtitle,
                                icon: element.icon,
                                hero: element.tag,
                                description: element.detail));
                      }
                    },
                    title: Text(
                      element.title.toUpperCase(),
                      style: TextStyle(
                        color: Theme.of(context).primaryColorDark,
                        fontSize: 14,
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
