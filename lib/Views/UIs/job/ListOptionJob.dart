import 'package:cache_image/cache_image.dart';
import 'package:comfacundi_app/Config/Urls.dart';
import 'package:comfacundi_app/Views/Partials/comfacundiBase.dart';
import 'package:comfacundi_app/Views/UIs/job/DetailJob/DetailJobSettings.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

import 'DetailJob2/DetailJob2Settings.dart';
import 'ListoOptionJobSettings.dart';

class ListOptionJobPage extends StatelessWidget {
  final ListOptionJobSettings settings;
  ListOptionJobPage({
    Key key,
    @required this.settings,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Base(
      icon: 'assets/svg/lupa.svg',
      tag: 'empleo',
      headerColor: Theme.of(context).primaryColorDark,
      bottomBarColor: Theme.of(context).primaryColorDark,
      title: '¡AGENCIA DE EMPLEO COMFACUNDI!',
      child: Padding(
        padding: const EdgeInsets.all(50.0),
        child: Column(
          children: <Widget>[
            Expanded(
              child: Card(
                child: Column(
                  children: <Widget>[
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: <Widget>[
                        Container(
                          width: 100,
                          height: 70,
                          child: SvgPicture.asset(
                            'assets/svg/mpc.svg',
                            allowDrawingOutsideViewBox: true,
                          ),
                        ),
                        Container(
                          width: 120,
                          height: 70,
                          child: Image(
                            image: CacheImage(Urls.images + 'serv_empleo2.png'),
                          ),
                        ),
                      ],
                    ),
                    Padding(
                      padding: EdgeInsets.all(10),
                      child: Container(
                        child: Text(
                            'Hacemos parte del Servicio Público de Empleo con la Agencia de Gestión y Colocación de Empleo Comfacundi y prestamos los siguientes servicios.',
                            style: TextStyle(
                              color: Theme.of(context).primaryColorDark,
                            )),
                      ),
                    ),
                    Expanded(
                      child:
                          ListView(padding: EdgeInsets.zero, children: <Widget>[
                        ListTile(
                          onTap: () {
                            Navigator.pushNamed(context, '/detailJob',
                                arguments: DetailJobSettings(
                                    title: '¡VACANTES!',
                                    hero: 'empleo',
                                    child: settings.job.vacants.child,
                                    icon: 'assets/svg/lupa.svg',
                                    url: settings.job.vacants.url,
                                    subtitle: settings.job.vacants.title,
                                    detail: settings.job.vacants.detail));
                          },
                          title: Text(
                            'VACANTES',
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
                        ListTile(
                          onTap: () {
                            Navigator.pushNamed(context, '/detailJob2',
                                arguments: DetailJob2Settings(
                                    title:
                                        '¡Ruta de Empleabilidad!'.toUpperCase(),
                                    hero: 'empleo',
                                    routeDetail: settings.job.rute.routeDetail,
                                    icon: 'assets/svg/lupa.svg',
                                    detail: settings.job.rute.detail));
                          },
                          title: Text(
                            'Ruta de Empleabilidad'.toUpperCase(),
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
                      ]),
                    ),
                  ],
                ),
              ),
            ),
            Row(
              children: <Widget>[
                Padding(
                  padding: const EdgeInsets.all(10),
                  child: Container(
                    width: 200,
                    height: 50,
                    child: Image(
                      image: CacheImage(Urls.images + 'ban_1.png'),
                    ),
                  ),
                ),
              ],
            )
          ],
        ),
      ),
    );
  }
}
