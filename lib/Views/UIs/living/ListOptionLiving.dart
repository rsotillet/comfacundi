import 'package:comfacundi_app/Views/Partials/comfacundiBase.dart';
import 'package:comfacundi_app/Views/UIs/living/DetailLiving.dart/detailLivingSettings.dart';
import 'package:flutter/material.dart';

import 'ListOptionLivingSettings.dart';

class ListOptionLivingPage extends StatelessWidget {
  final ListOptionLivingSettings settings;
  ListOptionLivingPage({
    Key key,
    @required this.settings,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Base(
      headerColor: Theme.of(context).primaryColorDark,
      bottomBarColor: Theme.of(context).primaryColorDark,
      title: '¡EL SUEÑO DE TU VIVIENDA A TU ALCANCE!',
      tag: 'vivienda',
      icon: 'assets/svg/casa.svg',
      child: Padding(
        padding: const EdgeInsets.all(50.0),
        child: Card(
          child: ListView(padding: EdgeInsets.zero, children: <Widget>[
            ...settings.living.items.map((element) {
              return Column(
                mainAxisSize: MainAxisSize.min,
                children: <Widget>[
                  (element.children.length > 1)
                      ? ExpansionTile(
                          title: Text('${element.title}'),
                          children: <Widget>[
                            ...element.children.map((el) {
                              return ListTile(
                                onTap: () {
                                  Navigator.pushNamed(context, '/detailLiving',
                                      arguments:
                                          DetailLivingSettings(children: el));
                                },
                                title: Text(
                                  el.subtitle.toUpperCase(),
                                  style: TextStyle(
                                      color: Color.fromRGBO(0, 40, 82, 1),
                                      fontFamily: 'Montserrat'),
                                ),
                                trailing: Icon(Icons.keyboard_arrow_right),
                              );
                            })
                          ],
                        )
                      : ListTile(
                          onTap: () {
                            Navigator.pushNamed(context, '/detailLiving',
                                arguments: DetailLivingSettings(
                                    children: element.children[0]));
                          },
                          title: Text(
                            element.title.toUpperCase(),
                            style: TextStyle(
                                color: Color.fromRGBO(0, 40, 82, 1),
                                fontFamily: 'Montserrat'),
                          ),
                          trailing: Icon(Icons.keyboard_arrow_right),
                        ),
                  Padding(
                    padding: EdgeInsets.symmetric(horizontal: 8.0),
                    child: Divider(
                      color: Color.fromRGBO(0, 40, 82, .5),
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
