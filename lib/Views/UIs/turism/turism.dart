import 'package:cache_image/cache_image.dart';
import 'package:comfacundi_app/Config/Urls.dart';
import 'package:comfacundi_app/Views/Partials/comfacundiBase.dart';
import 'package:comfacundi_app/Views/Partials/rotateBackGround.dart';
import 'package:comfacundi_app/Views/UIs/turism/listOptionsTurism/listOptionsTurismSettings.dart';
import 'package:comfacundi_app/Views/UIs/turism/turism_setings.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class TurismPage extends StatelessWidget {
  final TurismSettings settings;

  TurismPage({Key key, this.settings}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Base(
      title: '¡Planea tu próxima aventura!',
      icon: 'assets/svg/maleta.svg',
      tag: 'turismo',
      headerColor: Theme.of(context).primaryColorDark,
      bottomBarColor: Theme.of(context).primaryColorDark,
      child: Center(
          child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: <Widget>[
          _ButtonTurism(
            image: settings.turism.agencyData.image,
            aligment1: settings.turism.agencyData.aligment1,
            aligment2: settings.turism.agencyData.aligment2,
            name: settings.turism.agencyData.name,
            tag: settings.turism.agencyData.hero,
            icon: settings.turism.agencyData.icon,
            onPressed: () {
              Navigator.pushNamed(context, '/listOptionTurism',
                  arguments: ListOptionsTurismSettings(
                      direct: false,
                      children: settings.turism.agencyData.children,
                      subtitle: settings.turism.agencyData.subtitle,
                      icon: settings.turism.agencyData.icon,
                      hero: settings.turism.agencyData.hero));
            },
          ),
          _ButtonTurism(
            image: settings.turism.hotelData.image,
            aligment1: settings.turism.hotelData.aligment1,
            aligment2: settings.turism.hotelData.aligment2,
            name: settings.turism.hotelData.name,
            tag: settings.turism.hotelData.hero,
            icon: settings.turism.hotelData.icon,
            onPressed: () {
              Navigator.pushNamed(context, '/listOptionTurism',
                  arguments: ListOptionsTurismSettings2(
                      direct: true,
                      children: settings.turism.hotelData.hotels,
                      subtitle: settings.turism.hotelData.subtitle,
                      icon: settings.turism.hotelData.icon,
                      hero: settings.turism.hotelData.hero));
            },
          )
        ],
      )),
    );
  }
}

class _ButtonTurism extends StatelessWidget {
  final Function onPressed;
  final String image;
  final String name;
  final double aligment1;
  final double aligment2;
  final String icon;
  final String tag;

  const _ButtonTurism(
      {Key key,
      this.onPressed,
      this.image,
      this.aligment1,
      this.aligment2,
      this.icon,
      this.tag,
      this.name})
      : super(key: key);
  @override
  Widget build(BuildContext context) {
    return RawMaterialButton(
      elevation: 100,
      onPressed: onPressed,
      child: Container(
        alignment: Alignment(0, -1.8),
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(20),
            image: DecorationImage(
                image: CacheImage(
                    Urls.images + image), //AssetImage(Urls.images + image),
                fit: BoxFit.cover,
                alignment: Alignment(aligment1, aligment2))),
        width: MediaQuery.of(context).size.width * .45,
        height: MediaQuery.of(context).size.height * .4,
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: <Widget>[
            Container(
              height: 40,
              child: Padding(
                padding: EdgeInsets.all(8.0),
                child: Text(
                  name,
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    fontSize: 10,
                    color: Color.fromRGBO(0, 40, 82, 1),
                  ),
                ),
              ),
            ),
            Hero(
              tag: tag,
              child: Container(
                width: 90,
                height: 90,
                child: Stack(
                  alignment: Alignment.center,
                  children: <Widget>[
                    ImageRotate(),
                    Container(
                      height: 45,
                      width: 45,
                      child: SvgPicture.asset(
                        icon,
                        allowDrawingOutsideViewBox: true,
                      ),
                    ),
                  ],
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
