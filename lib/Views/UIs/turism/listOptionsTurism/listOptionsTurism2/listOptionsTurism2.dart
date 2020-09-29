import 'package:comfacundi_app/Views/Partials/comfacundiBase.dart';
import 'package:comfacundi_app/Views/UIs/turism/listOptionsTurism/listOptionsTurism2/detailTurism/detailTurismSettings.dart';
import 'package:comfacundi_app/Views/UIs/turism/listOptionsTurism/listOptionsTurism2/listOptionsTurism2Settings.dart';
import 'package:flutter/material.dart';

class ListOptionTurism2Page extends StatelessWidget {
  ListOptionTurism2Page({Key key, this.settings}) : super(key: key);
  final ListOptionTurism2Settings settings;
  @override
  Widget build(BuildContext context) {
    return Base(
      headerColor: Theme.of(context).primaryColor,
      bottomBarColor: Theme.of(context).primaryColorDark,
      icon: settings.icon,
      tag: settings.hero,
      title: settings.title,
      child: Padding(
        padding: const EdgeInsets.all(50.0),
        child: Card(
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
                            Navigator.pushNamed(context, '/detailTurism',
                                arguments: DetailTurismSettings(
                                    hero: settings.hero,
                                    withTitle: false,
                                    child: el));
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
                          color: Color.fromRGBO(0, 40, 82, 1),
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
                return Column(
                  mainAxisSize: MainAxisSize.min,
                  children: <Widget>[
                    ListTile(
                      onTap: () {
                        Navigator.pushNamed(context, '/detailTurism',
                            arguments: DetailTurismSettings(
                                hero: settings.hero,
                                withTitle: false,
                                child: element.child[0]));
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
        ),
      ),
    );
  }
}
