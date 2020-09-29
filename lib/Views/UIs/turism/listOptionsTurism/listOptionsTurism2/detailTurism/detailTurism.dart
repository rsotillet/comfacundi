import 'package:cache_image/cache_image.dart';
import 'package:comfacundi_app/Config/Urls.dart';
import 'package:comfacundi_app/Views/Partials/comfacundiBase.dart';
import 'package:comfacundi_app/Views/Partials/launchButton.dart';
import 'package:comfacundi_app/Views/UIs/turism/listOptionsTurism/listOptionsTurism2/detailTurism/detailTurismSettings.dart';
import 'package:flutter/material.dart';

class DetailTurism extends StatelessWidget {
  DetailTurism({Key key, this.settings}) : super(key: key);
  final DetailTurismSettings settings;

  @override
  Widget build(BuildContext context) {
    return Base(
      title: settings.child.subtitle,
      headerColor: settings.child.background == "HaciendaNapoles.jpeg" ||
              settings.child.background == "FeriaFlores.png"
          ? Theme.of(context).primaryColor
          : Theme.of(context).primaryColorDark,
      bottomBarColor: Theme.of(context).primaryColorLight,
      withSupport: false,
      icon: settings.child.icon,
      tag: settings.hero,
      containerColor: settings.child.background == "HaciendaNapoles.jpeg" ||
              settings.child.background == "FeriaFlores.png"
          ? Theme.of(context).primaryColor
          : Theme.of(context).primaryColorDark,
      decorationImage: DecorationImage(
          image: CacheImage(Urls.images + settings.child.background),
          fit: BoxFit.cover,
          alignment: (settings.child.background == 'CanoCristales.jpg')
              ? Alignment(-.5, 0)
              : Alignment(0, 0)),
      child: Center(
        child: Padding(
          padding: const EdgeInsets.all(50.0),
          child: Container(
            padding: const EdgeInsets.all(16.0),
            child: SingleChildScrollView(
              child: Column(
                children: <Widget>[
                  if (settings.withTitle)
                    Padding(
                      padding: const EdgeInsets.only(bottom: 10),
                      child: Text(
                        settings.child.title.toUpperCase(),
                        textAlign: TextAlign.center,
                        style: TextStyle(
                            fontWeight: FontWeight.bold, color: Colors.white),
                      ),
                    ),
                  Text(
                    settings.child.text1,
                    textAlign: TextAlign.center,
                    style: TextStyle(color: Colors.white),
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  Text(
                    '${settings.child.price.text1} ${settings.child.price.price}',
                    textAlign: TextAlign.center,
                    style: TextStyle(
                        color: Colors.white,
                        fontWeight: FontWeight.bold,
                        fontSize: (settings.withTitle) ? 15 : 25.0),
                  ),
                  if (!settings.withTitle)
                    Text(
                      settings.child.price.text2,
                      textAlign: TextAlign.center,
                      style: TextStyle(color: Colors.white),
                    ),
                  SizedBox(
                    height: 20,
                  ),
                  if (!settings.withTitle)
                    Padding(
                      padding: const EdgeInsets.only(bottom: 5.0),
                      child: Text(
                        settings.child.areaButton.txt1,
                        textAlign: TextAlign.center,
                        style: TextStyle(color: Colors.white),
                      ),
                    ),
                  LaunchButton(
                    text: settings.child.areaButton.txtButton.toUpperCase(),
                    url: settings.child.areaButton.url,
                  ),
                  SizedBox(
                    height: 5,
                  ),
                  Text(
                    settings.child.areaButton.txt2.toUpperCase(),
                    textAlign: TextAlign.center,
                    style: TextStyle(fontSize: 10, color: Colors.white),
                  ),
                ],
              ),
            ),
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(20),
              color: Theme.of(context).canvasColor,
            ),
          ),
        ),
      ),
    );
  }
}
