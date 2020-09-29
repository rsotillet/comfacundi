import 'package:comfacundi_app/Views/Partials/comfacundiBase.dart';
import 'package:comfacundi_app/Views/UIs/education/ListOptionEducation2/ListOptionEducation2Settings.dart';
import 'package:comfacundi_app/Views/UIs/education/ListOptionEducationSettings.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class ListOptionEducationPage extends StatelessWidget {
  final ListOptionEducationSettings settings;
  ListOptionEducationPage({
    Key key,
    @required this.settings,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Base(
      title: '¡NUESTRO FUTURO, CON LA MEJOR EDUCACIÓN!',
      headerColor: Theme.of(context).primaryColorDark,
      bottomBarColor: Theme.of(context).primaryColorDark,
      icon: 'assets/svg/birrete.svg',
      tag: 'educacion',
      child: Padding(
        padding: const EdgeInsets.all(50.0),
        child: Card(
          child: ListView(padding: EdgeInsets.zero, children: <Widget>[
            ...settings.education.items.map((element) {
              return Column(
                mainAxisSize: MainAxisSize.min,
                children: <Widget>[
                  ListTile(
                    onTap: () {
                      Navigator.pushNamed(context, '/listOptionEducation2',
                          arguments: ListOptionEducation2Settings(
                              children: element.children,
                              title: element.title,
                              icon: element.icon,
                              hero: element.tag));
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
