import 'package:comfacundi_app/Views/Partials/comfacundiBase.dart';
import 'package:comfacundi_app/Views/UIs/living/ListOptionLiving2/ListOptionLiving2Settings.dart';
import 'package:flutter/material.dart';

import 'DetailLiving/detailLivingSettings.dart';
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
              print(element.title);
              return Column(
                mainAxisSize: MainAxisSize.min,
                children: <Widget>[
                  (element.children1.length <= 1)
                      ? ListTile(
                          onTap: () {
                            Navigator.pushNamed(context, '/listOptionLiving2',
                                arguments: ListOptionLiving2Settings(
                                  children: element.children1[0].children,
                                  detail: element.children1[0].detail,
                                  hero: element.children1[0].tag,
                                  icon: element.children1[0].icon,
                                  title: element.children1[0].title,
                                ));
                          },
                          title: Text(
                            element.title.toUpperCase(),
                            style: TextStyle(
                                color: Color.fromRGBO(0, 40, 82, 1),
                                fontFamily: 'Montserrat'),
                          ),
                          trailing: Icon(Icons.keyboard_arrow_right),
                        )
                      : ListTile(
                          onTap: () {
                            Navigator.pushNamed(context, '/detailLiving',
                                arguments: DetailLivingSettings(
                                  detail: element
                                      .children1[0].children[0].child[0].detail,
                                  hero: element.children1[0].tag,
                                  icon: element.children1[0].icon,
                                  title: element
                                      .children1[0].children[0].child[0].title,
                                  detail2: element.children1[0].children[0]
                                      .child[0].detail2,
                                  imgs: element
                                      .children1[0].children[0].child[0].imgs,
                                  table1: element
                                      .children1[0].children[0].child[0].table1,
                                  table2: element
                                      .children1[0].children[0].child[0].table2,
                                  url: element
                                      .children1[0].children[0].child[0].url,
                                  withbg: element
                                      .children1[0].children[0].child[0].withBg,
                                ));
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
