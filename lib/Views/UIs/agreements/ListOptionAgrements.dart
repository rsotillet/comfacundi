import 'package:comfacundi_app/Views/Partials/comfacundiBase.dart';
import 'package:comfacundi_app/Views/UIs/agreements/DetailAgreements.dart/detailAgreementsSettings.dart';
import 'package:comfacundi_app/Views/UIs/agreements/ListOptionAgreementsSettings.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class ListOptionAgreementsPage extends StatelessWidget {
  final ListOptionAgreementsSettings settings;
  ListOptionAgreementsPage({
    Key key,
    @required this.settings,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Base(
      bottomBarColor: Theme.of(context).primaryColorDark,
      headerColor: Theme.of(context).primaryColorDark,
      icon: 'assets/svg/ticket.svg',
      tag: 'convenios',
      title: '¡Aliados estratégicos para grandes experiencias!',
      child: Padding(
        padding: const EdgeInsets.all(50.0),
        child: Card(
          child: ListView(padding: EdgeInsets.zero, children: <Widget>[
            ...settings.agreements.items.map((element) {
              return Column(
                mainAxisSize: MainAxisSize.min,
                children: <Widget>[
                  ListTile(
                    onTap: () {
                      Navigator.pushNamed(context, '/detailAgreements',
                          arguments: DetailAgreementsSettings(
                              title: element.subtitle,
                              icon: element.icon,
                              hero: element.hero,
                              children: element.children));
                    },
                    title: Text(
                      element.title.toUpperCase(),
                      style:
                          TextStyle(color: Theme.of(context).primaryColorDark),
                    ),
                    trailing: Container(
                      height: 50,
                      width: 50,
                      child: Hero(
                        tag: element.hero,
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
