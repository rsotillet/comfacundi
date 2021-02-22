import 'package:comfacundi_app/Views/Partials/comfacundiBase.dart';
import 'package:comfacundi_app/Views/Partials/launchButton.dart';
import 'package:flutter/material.dart';

import 'DetailDeport1Settings.dart';

class DetailDeport1 extends StatelessWidget {
  final DetailDeport1Settings settings;

  const DetailDeport1({Key key, @required this.settings}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Base(
      title: settings.title,
      icon: settings.icon,
      tag: settings.hero,
      bottomBarColor: Theme.of(context).canvasColor,
      headerColor: Theme.of(context).primaryColorDark,
      withSupport: false,
      decorationImage: DecorationImage(
        image: AssetImage(
          'assets/pictures/bg_azul.jpg',
        ),
        fit: BoxFit.cover,
      ),
      child: Center(
        child: Padding(
          padding: const EdgeInsets.all(50.0),
          child: Container(
            padding: const EdgeInsets.all(16.0),
            child: SingleChildScrollView(
              child: Column(
                mainAxisSize: MainAxisSize.min,
                children: <Widget>[
                  Text(
                    '${settings.description}',
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 14,
                    ),
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  LaunchButton(
                    text: 'Más Información'.toUpperCase(),
                    url: settings.url,
                  ),
                  SizedBox(
                    height: 5,
                  ),
                ],
              ),
            ),
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(20),
              border: Border.all(color: Colors.white.withOpacity(.7), width: 2),
              color: Theme.of(context).backgroundColor,
            ),
          ),
        ),
      ),
    );
  }
}
