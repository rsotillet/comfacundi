import 'package:cache_image/cache_image.dart';
import 'package:comfacundi_app/Config/Urls.dart';
import 'package:comfacundi_app/Views/Partials/comfacundiBase.dart';
import 'package:comfacundi_app/Views/Partials/launchButton.dart';
import 'package:comfacundi_app/Views/UIs/job/DetailJob/DetailJobSettings.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class DetailJob extends StatelessWidget {
  final DetailJobSettings settings;

  const DetailJob({Key key, @required this.settings}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Base(
      headerColor: Theme.of(context).primaryColor,
      bottomBarColor: Theme.of(context).primaryColorDark,
      title: settings.title,
      icon: settings.icon,
      withSupport: false,
      tag: settings.hero,
      child: Column(
        children: <Widget>[
          Expanded(
            child: Center(
              child: Padding(
                padding: const EdgeInsets.only(left: 10, right: 10, top: 10),
                child: Container(
                  padding: const EdgeInsets.all(16.0),
                  child: SingleChildScrollView(
                    child: Column(
                      mainAxisSize: MainAxisSize.min,
                      children: <Widget>[
                        Padding(
                          padding: const EdgeInsets.symmetric(vertical: 16.0),
                          child: Row(
                              children: [1, 2, 3, 4, 5, 6].map((el) {
                            return Expanded(
                              child: SvgPicture.asset(
                                'assets/svg/t${el.toString()}.svg',
                                height: 50,
                                allowDrawingOutsideViewBox: true,
                              ),
                            );
                          }).toList()),
                        ),
                        Padding(
                          padding: const EdgeInsets.symmetric(vertical: 16.0),
                          child: Row(
                              children: [7, 8, 9, 10, 11, 12].map((el) {
                            return Expanded(
                              child: SvgPicture.asset(
                                'assets/svg/t${el.toString()}.svg',
                                height: 50,
                                allowDrawingOutsideViewBox: true,
                              ),
                            );
                          }).toList()),
                        ),
                        Padding(
                          padding: const EdgeInsets.symmetric(vertical: 16.0),
                          child: Row(
                            children: <Widget>[
                              Expanded(
                                child: SvgPicture.asset(
                                  'assets/svg/t13.svg',
                                  height: 50,
                                  allowDrawingOutsideViewBox: true,
                                ),
                              ),
                              Expanded(
                                flex: 4,
                                child: Material(
                                  //Wrap with Material
                                  shape: RoundedRectangleBorder(
                                    borderRadius:
                                        BorderRadius.all(Radius.circular(100)),
                                  ),
                                  elevation: 0,
                                  color: Colors.transparent,
                                  clipBehavior: Clip.antiAlias,
                                  // Add This
                                  child: LaunchButton(
                                    text: 'Más Información'.toUpperCase(),
                                    url: settings.url,
                                  ),
                                ),
                              ),
                              Expanded(
                                child: SvgPicture.asset(
                                  'assets/svg/t14.svg',
                                  height: 50,
                                  allowDrawingOutsideViewBox: true,
                                ),
                              )
                            ],
                          ),
                        ),
                        Row(
                          children: <Widget>[
                            Expanded(
                              child: Container(),
                            ),
                            ...[15, 16, 17, 18].map((el) {
                              return Expanded(
                                child: SvgPicture.asset(
                                  'assets/svg/t${el.toString()}.svg',
                                  height: 50,
                                  allowDrawingOutsideViewBox: true,
                                ),
                              );
                            }).toList(),
                            Expanded(
                              child: Container(),
                            )
                          ],
                        ),
                        Divider(
                          color: Theme.of(context).primaryColorDark,
                        ),
                        Text(
                          settings.subtitle.toUpperCase(),
                          style: TextStyle(
                            fontWeight: FontWeight.bold,
                            fontSize: 11,
                            color: Theme.of(context).primaryColorDark,
                          ),
                        ),
                        SizedBox(
                          height: 10,
                        ),
                        RichText(
                          textAlign: TextAlign.center,
                          text: TextSpan(
                              style: TextStyle(
                                fontSize: 10,
                                color: Theme.of(context).primaryColorDark,
                              ),
                              children: [
                                ...settings.child.map((el) {
                                  return TextSpan(children: [
                                    TextSpan(
                                        text: el.title + ' ',
                                        style: TextStyle(
                                            fontWeight: FontWeight.bold)),
                                    TextSpan(text: el.direction + "\n"),
                                    TextSpan(
                                        text: 'Teléfonos: ',
                                        style: TextStyle(
                                            fontWeight: FontWeight.bold)),
                                    TextSpan(text: el.phone + '\n\n')
                                  ]);
                                }),
                                TextSpan(text: settings.detail)
                              ]),
                        )
                      ],
                    ),
                  ),
                ),
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
