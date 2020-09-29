import 'package:comfacundi_app/Views/Partials/comfacundiBase.dart';
import 'package:comfacundi_app/Views/Partials/launchButton.dart';
import 'package:comfacundi_app/Views/UIs/living/DetailLiving.dart/detailLivingSettings.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class DetailLiving extends StatelessWidget {
  final DetailLivingSettings settings;

  const DetailLiving({Key key, @required this.settings}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Base(
      headerColor: Theme.of(context).primaryColorDark,
      bottomBarColor: Theme.of(context).canvasColor,
      withSupport: false,
      decorationImage: DecorationImage(
        image: AssetImage(
          'assets/pictures/bg_azul.jpg',
        ),
        fit: BoxFit.cover,
      ),
      title: settings.children.title,
      icon: 'assets/svg/casa.svg',
      tag: 'vivienda',
      child: Center(
        child: Padding(
          padding: const EdgeInsets.all(50.0),
          child: Container(
            padding: const EdgeInsets.all(16.0),
            child: Column(
              mainAxisSize: MainAxisSize.min,
              children: <Widget>[
                Center(
                  child: Container(
                    decoration: BoxDecoration(
                        border: Border.all(color: Colors.white, width: 2)),
                    child: Padding(
                      padding: const EdgeInsets.symmetric(
                          vertical: 5, horizontal: 20),
                      child: Text(
                        settings.children.subtitle.toUpperCase(),
                        style: TextStyle(color: Colors.white),
                      ),
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(vertical: 20),
                  child: Text(
                    settings.children.description.toUpperCase(),
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      color: Colors.white,
                      fontFamily: 'Montserrat',
                    ),
                  ),
                ),
                Text(
                  settings.children.direction,
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 11,
                    fontFamily: 'Montserrat',
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(vertical: 20),
                  child: Text(
                    settings.children.price,
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 15,
                      fontWeight: FontWeight.bold,
                      fontFamily: 'Montserrat',
                    ),
                  ),
                ),
                SizedBox(
                  height: 10,
                ),
                Container(
                  width: 100,
                  height: 100,
                  child: SvgPicture.asset(
                    settings.children.img,
                    allowDrawingOutsideViewBox: true,
                  ),
                ),
                SizedBox(
                  height: 10,
                ),
                LaunchButton(
                  text: settings.children.txtButton.toUpperCase(),
                  url: settings.children.url,
                ),
                SizedBox(
                  height: 5,
                ),
              ],
            ),
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(20),
              border: Border.all(color: Colors.white.withOpacity(.7), width: 2),
              color: Color.fromRGBO(62, 133, 180, 1),
            ),
          ),
        ),
      ),
    );
  }
}
