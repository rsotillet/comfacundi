import 'package:comfacundi_app/Views/Partials/comfacundiBase.dart';
import 'package:flutter/material.dart';

import 'DetailDeport2.dart/detailDeport2Settings.dart';
import 'listOptionsDeport2Settings.dart';

class ListOptionDeport2Page extends StatelessWidget {
  ListOptionDeport2Page({Key key, this.settings}) : super(key: key);
  final ListOptionDeport2Settings settings;

  @override
  Widget build(BuildContext context) {
    return Base(
      title: settings.title,
      icon: settings.icon,
      tag: settings.hero,
      headerColor: Theme.of(context).primaryColor,
      bottomBarColor: Theme.of(context).primaryColorDark,
      child: Padding(
        padding: const EdgeInsets.all(50.0),
        child: Card(
            child: Column(
          children: <Widget>[
            Padding(
              padding: EdgeInsets.all(15),
              child: Text(
                settings.description,
                textAlign: TextAlign.justify,
                style: TextStyle(
                    fontSize: 12, color: Theme.of(context).primaryColorDark),
              ),
            ),
            Expanded(
              child: ListView(
                padding: EdgeInsets.zero,
                children: <Widget>[
                  ...settings.children.map((element) {
                    return ListTile(
                      onTap: () {
                        Navigator.pushNamed(context, '/detailDeport2',
                            arguments: DetailDeport2Settings(
                                hero: settings.hero,
                                icon: settings.icon,
                                child: element,
                                title: element.subtitle));
                      },
                      title: Text(
                        element.title.toUpperCase(),
                        style: TextStyle(
                            color: Theme.of(context).primaryColorDark,
                            fontFamily: 'Montserrat'),
                      ),
                      trailing: Icon(
                        Icons.keyboard_arrow_right,
                        color: Theme.of(context).primaryColorDark,
                      ),
                    );
                  }).toList(),
                ],
              ),
            )
          ],
        )),
      ),
    );
  }
}
