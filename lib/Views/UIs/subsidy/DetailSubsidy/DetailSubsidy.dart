import 'package:cache_image/cache_image.dart';
import 'package:comfacundi_app/Config/Urls.dart';
import 'package:comfacundi_app/Views/Partials/comfacundiBase.dart';
import 'package:comfacundi_app/Views/Partials/launchButton.dart';
import 'package:flutter/material.dart';

import 'DetailSubsidySettings.dart';

class DetailSubsidy extends StatelessWidget {
  final DetailSubsidySettings settings;

  const DetailSubsidy({Key key, @required this.settings}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Base(
      icon: settings.icon,
      title: settings.title,
      tag: settings.hero,
      withSupport: false,
      headerColor: Theme.of(context).primaryColorDark,
      bottomBarColor: Theme.of(context).canvasColor,
      decorationImage: DecorationImage(
        image: AssetImage(
          'assets/pictures/bg_azul.jpg',
        ),
        fit: BoxFit.cover,
      ),
      child: Center(
        child: Padding(
          padding: settings.withbg
              ? EdgeInsets.all(50.0)
              : EdgeInsets.only(top: 50.0, left: 10.0,right: 10.0,bottom: 10),
          child: Container(
            padding:
                settings.withbg ? EdgeInsets.all(16.0) : EdgeInsets.all(10.0),
            child: SingleChildScrollView(
              child: Column(
                mainAxisSize: MainAxisSize.min,
                children: <Widget>[
                  Text(
                    '${settings.detail}',
                    textAlign: TextAlign.justify,
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 11,
                      fontFamily: 'Montserrat',
                    ),
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  if (settings.imgs.length > 0)
                    Row(
                      children: <Widget>[
                        ...settings.imgs.map((el) {
                          return Expanded(
                              child: Padding(
                            padding: EdgeInsets.symmetric(horizontal: 10),
                            child: Image(image: CacheImage(Urls.images + el)),
                          ));
                        }).toList()
                      ],
                    ),
                  if (settings.detail2 != "" && settings.detail2 != null)
                    Text(
                      '${settings.detail2}',
                      textAlign: TextAlign.justify,
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 11,
                        fontFamily: 'Montserrat',
                      ),
                    ),
                  if (settings.detail2 != "")
                    SizedBox(
                      height: 10,
                    ),
                  if (settings.table1.length > 0)
                    Container(
                      child: Column(
                        children: <Widget>[
                          Row(
                            children: <Widget>[
                              Expanded(
                                flex: 3,
                                child: Container(
                                  height: 30,
                                  decoration: BoxDecoration(
                                      borderRadius: BorderRadius.only(
                                          topLeft: Radius.circular(10),
                                          topRight: Radius.circular(10)),
                                      color: Color.fromRGBO(158, 204, 110, 1)),
                                  child: Center(
                                      child: Text(
                                    'Fechas de pago'.toUpperCase(),
                                    textAlign: TextAlign.center,
                                    style: TextStyle(
                                        fontWeight: FontWeight.bold,
                                        fontSize: 10,
                                        color: Colors.white,
                                        fontFamily: 'Montserrat'),
                                  )),
                                ),
                              ),
                              ...[
                                'ENE',
                                'FEB',
                                'MAR',
                                'ABR',
                                'MAY',
                                'JUN',
                                'JUL',
                                'AGO',
                                'SEP',
                                'OCT',
                                'NOV',
                                'DIC'
                              ].map((el) {
                                return _buildHeader(
                                    text1: el,
                                    text2: '',
                                    color1: Color.fromRGBO(262, 133, 180, 1),
                                    color2: Color.fromRGBO(111, 203, 219, 1));
                              }).toList(),
                            ],
                          ),
                          Row(
                            children: <Widget>[
                              Expanded(
                                flex: 3,
                                child: Container(
                                  height: 50,
                                  decoration: BoxDecoration(
                                      borderRadius: BorderRadius.only(
                                          bottomLeft: Radius.circular(10),
                                          bottomRight: Radius.circular(10)),
                                      color: Colors.white),
                                  child: Column(
                                    mainAxisSize: MainAxisSize.max,
                                    children: <Widget>[
                                      Expanded(
                                        child: Container(
                                          child: Center(
                                            child: Text(
                                              'DÍA DE PAGO SUBSIDIO FAMILIAR ÉXITO',
                                              textAlign: TextAlign.center,
                                              style: TextStyle(
                                                  fontFamily: 'Montserrat',
                                                  fontSize: 5,
                                                  color: Color.fromRGBO(
                                                      0, 40, 82, 1)),
                                            ),
                                          ),
                                        ),
                                      ),
                                      Divider(
                                        height: 1,
                                      ),
                                      Expanded(
                                        child: Container(
                                          child: Center(
                                            child: Text(
                                              "DÍA DE PAGO SUBSIDIO FAMILIAR EFECTY",
                                              textAlign: TextAlign.center,
                                              style: TextStyle(
                                                  fontFamily: 'Montserrat',
                                                  fontSize: 5,
                                                  color: Color.fromRGBO(
                                                      0, 40, 82, 1)),
                                            ),
                                          ),
                                        ),
                                      )
                                    ],
                                  ),
                                ),
                              ),
                              ...[
                                settings.table1.elementAt(0).ene,
                                settings.table1.elementAt(0).feb,
                                settings.table1.elementAt(0).mar,
                                settings.table1.elementAt(0).abr,
                                settings.table1.elementAt(0).may,
                                settings.table1.elementAt(0).jun,
                                settings.table1.elementAt(0).jul,
                                settings.table1.elementAt(0).ago,
                                settings.table1.elementAt(0).sep,
                                settings.table1.elementAt(0).oct,
                                settings.table1.elementAt(0).nov,
                                settings.table1.elementAt(0).dic
                              ].map((el) {
                                return _buildBody1(
                                    text1: el.elementAt(0),
                                    text2: el.elementAt(1));
                              }).toList(),
                            ],
                          )
                        ],
                      ),
                    ),
                  if (settings.table2.length > 0)
                    Container(
                      child: Column(
                        children: <Widget>[
                          Row(
                            children: <Widget>[
                              Expanded(
                                child: Container(
                                  height: 50,
                                  decoration: BoxDecoration(
                                      borderRadius: BorderRadius.only(
                                          topLeft: Radius.circular(10),
                                          topRight: Radius.circular(10)),
                                      color: Colors.blue[900]),
                                  child: Center(
                                      child: Text(
                                    'CRONOGRAMA DE ASIGNACIÓN DEL\nSUBSIDIO FAMILIAR DE VIVIENDA 2020',
                                    textAlign: TextAlign.center,
                                    style: TextStyle(
                                        fontWeight: FontWeight.bold,
                                        color: Colors.white,
                                        fontSize: 10,
                                        fontFamily: 'Montserrat'),
                                  )),
                                ),
                              )
                            ],
                          ),
                          Row(
                            children: <Widget>[
                              _buildBody(
                                  text1: settings.table2
                                      .elementAt(0)
                                      .details
                                      .elementAt(0),
                                  text2: settings.table2
                                      .elementAt(1)
                                      .details
                                      .elementAt(0),
                                  text3: settings.table2
                                      .elementAt(2)
                                      .details
                                      .elementAt(0)),
                              ...[0, 1, 2, 3].map((el) {
                                return _buildBody(
                                    text1: settings.table2
                                        .elementAt(0)
                                        .details
                                        .elementAt(el),
                                    text2: settings.table2
                                        .elementAt(1)
                                        .details
                                        .elementAt(el),
                                    text3: settings.table2
                                        .elementAt(2)
                                        .details
                                        .elementAt(el));
                              }).toList(),
                            ],
                          )
                        ],
                      ),
                    ),
                  SizedBox(
                    height: 20,
                  ),
                  if (settings.url != "-")
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
              border: Border.all(
                  color: settings.withbg
                      ? Colors.white.withOpacity(.7)
                      : Colors.transparent,
                  width: 2),
              color: settings.withbg
                  ? Color.fromRGBO(62, 133, 180, 1)
                  : Colors.transparent,
            ),
          ),
        ),
      ),
    );
  }

  _buildHeader({String text1, String text2, Color color1, Color color2}) {
    return Expanded(
      child: Container(
        height: 30,
        decoration: BoxDecoration(
            borderRadius: BorderRadius.only(
                topLeft: Radius.circular(5), topRight: Radius.circular(5)),
            color: color1),
        child: Column(
          mainAxisSize: MainAxisSize.max,
          children: <Widget>[
            Padding(
              padding: const EdgeInsets.symmetric(vertical: 5),
              child: Text(
                text1,
                style: TextStyle(
                    fontSize: 8,
                    fontFamily: 'Montserrat',
                    color: Colors.white,
                    fontWeight: FontWeight.bold),
              ),
            ),
            Expanded(
              child: Container(
                color: color2,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: <Widget>[
                    Center(
                      child: Text(
                        text2,
                        textAlign: TextAlign.center,
                        style: TextStyle(
                            fontFamily: 'Montserrat',
                            fontWeight: FontWeight.bold,
                            color: Colors.white),
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

  _buildBody({String text1, String text2, String text3, int flex: 1}) {
    return Expanded(
      flex: flex,
      child: Container(
        height: 100,
        decoration: BoxDecoration(
            borderRadius: BorderRadius.only(
                bottomLeft: Radius.circular(10),
                bottomRight: Radius.circular(10)),
            color: Colors.white),
        child: Column(
          mainAxisSize: MainAxisSize.max,
          children: <Widget>[
            Expanded(
              child: Container(
                child: Center(
                  child: Text(
                    text1,
                    textAlign: TextAlign.center,
                    style: TextStyle(
                        fontFamily: 'Montserrat',
                        fontSize: 8,
                        color: Color.fromRGBO(0, 40, 82, 1)),
                  ),
                ),
              ),
            ),
            Divider(
              height: 1,
            ),
            Expanded(
              child: Container(
                child: Center(
                  child: Text(text2,
                      textAlign: TextAlign.center,
                      style: TextStyle(
                          fontFamily: 'Montserrat',
                          fontSize: 8,
                          color: Color.fromRGBO(0, 40, 82, 1))),
                ),
              ),
            ),
            Divider(
              height: 1,
            ),
            Expanded(
              child: Container(
                child: Center(
                  child: Text(
                    text3,
                    textAlign: TextAlign.center,
                    style: TextStyle(
                        fontFamily: 'Montserrat',
                        fontSize: 8,
                        color: Color.fromRGBO(0, 40, 82, 1)),
                  ),
                ),
              ),
            )
          ],
        ),
      ),
    );
  }

  _buildBody1({String text1, String text2}) {
    return Expanded(
      child: Container(
        height: 50,
        decoration: BoxDecoration(
            borderRadius: BorderRadius.only(
                bottomLeft: Radius.circular(5),
                bottomRight: Radius.circular(5)),
            color: Colors.white),
        child: Column(
          mainAxisSize: MainAxisSize.max,
          children: <Widget>[
            Expanded(
              child: Container(
                child: Center(
                  child: Text(
                    text1,
                    textAlign: TextAlign.center,
                    style: TextStyle(
                        fontFamily: 'Montserrat',
                        fontSize: 8,
                        color: Color.fromRGBO(0, 40, 82, 1)),
                  ),
                ),
              ),
            ),
            Divider(
              height: 1,
            ),
            Expanded(
              child: Container(
                child: Center(
                  child: Text(
                    text2,
                    textAlign: TextAlign.center,
                    style: TextStyle(
                        fontFamily: 'Montserrat',
                        fontSize: 8,
                        color: Color.fromRGBO(0, 40, 82, 1)),
                  ),
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
