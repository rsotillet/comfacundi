import 'package:cache_image/cache_image.dart';
import 'package:comfacundi_app/Config/Urls.dart';
import 'package:comfacundi_app/Views/Partials/comfacundiBase.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

import 'DetailJob2Settings.dart';

class DetailJob2 extends StatelessWidget {
  DetailJob2({Key key, this.settings}) : super(key: key);
  final DetailJob2Settings settings;

  @override
  Widget build(BuildContext context) {
    return Base(
      title: settings.title,
      withSupport: false,
      bottomBarColor: Theme.of(context).primaryColorDark,
      headerColor: Theme.of(context).primaryColor,
      tag: settings.hero,
      icon: settings.icon,
      child: Column(
        children: <Widget>[
          Expanded(
            child: Padding(
              padding:
                  const EdgeInsets.symmetric(horizontal: 30, vertical: 100),
              child: Card(
                child: SingleChildScrollView(
                    padding: EdgeInsets.all(20),
                    child: Column(
                      children: <Widget>[
                        Text(settings.detail,
                            textAlign: TextAlign.justify,
                            style: TextStyle(
                                color: Theme.of(context).primaryColorDark)),
                        Row(
                          children: <Widget>[
                            Padding(
                              padding:
                                  const EdgeInsets.symmetric(vertical:12),
                              child: Text(
                                'Ruta de empleabilidad',
                                textAlign: TextAlign.start,
                                style: TextStyle(
                                    color: Theme.of(context).primaryColorDark,
                                    fontWeight: FontWeight.bold),
                              ),
                            ),
                          ],
                        ),
                        Text(settings.routeDetail,
                            textAlign: TextAlign.justify,
                            style: TextStyle(
                                color: Theme.of(context).primaryColorDark)),
                      ],
                    )),
              ),
            ),
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.start,
            children: <Widget>[
              Padding(
                padding: const EdgeInsets.all(10),
                child: Container(
                  width: 100,
                  height: 50,
                  child: SvgPicture.asset(
                    'assets/svg/mpc.svg',
                    allowDrawingOutsideViewBox: true,
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(10),
                child: Container(
                    width: 100,
                    height: 50,
                    child: Image(
                      image: CacheImage(Urls.images + 'serv_empleo2.png'),
                    )),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
