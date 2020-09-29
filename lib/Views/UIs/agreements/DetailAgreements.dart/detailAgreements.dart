import 'package:cache_image/cache_image.dart';
import 'package:comfacundi_app/Config/Urls.dart';
import 'package:comfacundi_app/Models/AgreementsClasses.dart';
import 'package:comfacundi_app/Views/Partials/comfacundiBase.dart';
import 'package:flutter/material.dart';

import 'detailAgreementsSettings.dart';

class DetailAgreement extends StatelessWidget {
  final DetailAgreementsSettings settings;

  const DetailAgreement({Key key, @required this.settings}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Base(
      title: settings.title,
      tag: settings.hero,
      icon: settings.icon,
      withSupport: false,
      headerColor: Theme.of(context).primaryColorDark,
      bottomBarColor: Theme.of(context).primaryColorLight,
      decorationImage: DecorationImage(
        image: AssetImage(
          'assets/pictures/bg_gris.jpg',
        ),
        fit: BoxFit.cover,
      ),
      child: Padding(
        padding:
            EdgeInsets.only(top: MediaQuery.of(context).size.height * 0.10),
        child: ListView(
          children: <Widget>[
            ...settings.children.map((element) {
              return Column(
                children: <Widget>[
                  _buildItem(context, children: element),
                  Divider(),
                ],
              );
            })
          ],
        ),
      ),
    );
  }

  _buildItem(BuildContext context, {Children children}) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 30),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          Container(
            decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadiusDirectional.all(
                  Radius.circular(20),
                ),
                image: DecorationImage(
                  image: CacheImage(Urls.images+children.image),
                )),
            width: 100,
            height: 100,
          ),
          Expanded(
            child: Padding(
              padding: EdgeInsets.only(left: 10),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  Text(
                    children.title,
                    style: TextStyle(
                        color: Theme.of(context).primaryColorDark,
                        fontWeight: FontWeight.bold),
                  ),
                  RichText(
                    text: TextSpan(
                        style: TextStyle(
                          fontSize: 11,
                          color: Theme.of(context).primaryColorDark,
                        ),
                        children: [
                          TextSpan(
                              text: 'Beneficio: ',
                              style: TextStyle(fontWeight: FontWeight.bold)),
                          TextSpan(text: children.benefit),
                        ]),
                  ),
                  if (children.direction != "")
                    RichText(
                      text: TextSpan(
                          style: TextStyle(
                            fontSize: 11,
                            color: Theme.of(context).primaryColorDark,
                          ),
                          children: [
                            TextSpan(
                                text: 'Ubicación: ',
                                style: TextStyle(fontWeight: FontWeight.bold)),
                            TextSpan(text: children.direction),
                          ]),
                    ),
                  if (children.phone != "")
                    RichText(
                      text: TextSpan(
                          style: TextStyle(
                            fontSize: 11,
                            color: Theme.of(context).primaryColorDark,
                          ),
                          children: [
                            TextSpan(
                                text: 'Teléfono: ',
                                style: TextStyle(fontWeight: FontWeight.bold)),
                            TextSpan(text: children.phone),
                          ]),
                    ),
                  if (children.web != "")
                    RichText(
                      text: TextSpan(
                          style: TextStyle(
                            fontSize: 11,
                            color: Theme.of(context).primaryColorDark,
                          ),
                          children: [
                            TextSpan(
                                text: 'Web: ',
                                style: TextStyle(fontWeight: FontWeight.bold)),
                            TextSpan(text: children.web),
                          ]),
                    )
                ],
              ),
            ),
          )
        ],
      ),
    );
  }
}
