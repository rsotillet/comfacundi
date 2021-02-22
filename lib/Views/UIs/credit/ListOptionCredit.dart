import 'package:comfacundi_app/Views/Partials/comfacundiBase.dart';
import 'package:comfacundi_app/Views/UIs/credit/DetailCredit.dart/detailCreditSettings.dart';
import 'package:comfacundi_app/Views/UIs/credit/ListOptionCreditSettings.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class ListOptionCreditPage extends StatelessWidget {
  final ListOptionCreditSettings settings;
  ListOptionCreditPage({
    Key key,
    @required this.settings,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Base(
      title: '¡TU SEGURIDAD FINANCIERA ES NUESTRO COMPROMISO!',
      icon: 'assets/svg/credito.svg',
      tag: 'credito',
      headerColor: Theme.of(context).primaryColorDark,
      bottomBarColor: Theme.of(context).primaryColorDark,
      child: Padding(
        padding: const EdgeInsets.all(50.0),
        child: Card(
          child: ListView(
              padding: EdgeInsets.zero,
              children: settings.credit.items.map((element) {
                return Column(
                  mainAxisSize: MainAxisSize.min,
                  children: <Widget>[
                    ListTile(
                      onTap: () {
                        Navigator.pushNamed(context, '/detailCredit',
                            arguments: DetailCreditSettings(
                                child: element.child,
                                icon: element.icon,
                                hero: element.hero));
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
              }).toList()),
        ),
      ),
    );
  }
}
