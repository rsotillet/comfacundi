import 'package:comfacundi_app/Models/SubsidyClasses.dart';
import 'package:comfacundi_app/Views/Partials/comfacundiBase.dart';
import 'package:comfacundi_app/Views/UIs/subsidy/DetailSubsidy/DetailSubsidySettings.dart';
import 'package:flutter/material.dart';

import 'ListOptionSubsidy2Settings.dart';

class ListOptionSubsidy2Page extends StatelessWidget {
  ListOptionSubsidy2Page({Key key, this.settings}) : super(key: key);
  final ListOptionSubsidy2Settings settings;

  @override
  Widget build(BuildContext context) {
    return Base(
      title: settings.title,
      tag: settings.hero,
      icon: settings.icon,
      headerColor: Theme.of(context).primaryColor,
      bottomBarColor: Theme.of(context).primaryColorDark,
      child: Padding(
        padding: const EdgeInsets.all(50.0),
        child: Card(
            child: Column(
          children: <Widget>[
            if (settings.detail != "")
              Padding(
                padding: EdgeInsets.all(15),
                child: Text(
                  settings.detail,
                  textAlign: TextAlign.justify,
                  style: TextStyle(
                      fontSize: 12, color: Theme.of(context).primaryColorDark),
                ),
              ),
            Expanded(
              child: ListView(
                padding: EdgeInsets.zero,
                children: settings.children.map((element) {
                  if (element.child.length > 1) {
                    return Column(
                      mainAxisSize: MainAxisSize.min,
                      children: <Widget>[
                        ExpansionTile(
                          children: element.child.map((el) {
                            return ListTile(
                              onTap: () {
                                Navigator.pushNamed(context, '/detailSubsidy',
                                    arguments: DetailSubsidySettings(
                                        withbg: el.withBg,
                                        table1: el.table1,
                                        table2: el.table2,
                                        detail2: el.detail2,
                                        imgs: el.imgs,
                                        url: el.url,
                                        detail: el.detail,
                                        icon: settings.icon,
                                        title: el.subtitle,
                                        hero: settings.hero));
                              },
                              title: Text(
                                el.title,
                                style: TextStyle(
                                    color: Theme.of(context).primaryColorDark,
                                    fontStyle: FontStyle.italic),
                              ),
                              trailing: Icon(
                                Icons.keyboard_arrow_right,
                              ),
                            );
                          }).toList(),
                          title: Text(
                            element.title.toUpperCase(),
                            style: TextStyle(
                              color: Theme.of(context).primaryColorDark,
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
                  } else {
                    Child el = element.child.elementAt(0);
                    return Column(
                      mainAxisSize: MainAxisSize.min,
                      children: <Widget>[
                        ListTile(
                          onTap: () {
                            Navigator.pushNamed(context, '/detailSubsidy',
                                arguments: DetailSubsidySettings(
                                    table2: el.table2,
                                    url: el.url,
                                    detail: el.detail,
                                    withbg: el.withBg,
                                    detail2: el.detail2,
                                    imgs: el.imgs,
                                    table1: el.table1,
                                    icon: settings.icon,
                                    title: el.subtitle,
                                    hero: settings.hero));
                          },
                          title: Text(
                            element.title.toUpperCase(),
                            style: TextStyle(
                              color: Theme.of(context).primaryColorDark,
                            ),
                          ),
                          trailing: Icon(Icons.keyboard_arrow_right),
                        ),
                        Padding(
                          padding: EdgeInsets.symmetric(horizontal: 8.0),
                          child: Divider(
                            color: Theme.of(context).canvasColor,
                          ),
                        ),
                      ],
                    );
                  }
                }).toList(),
              ),
            )
          ],
        )),
      ),
    );
  }
}
