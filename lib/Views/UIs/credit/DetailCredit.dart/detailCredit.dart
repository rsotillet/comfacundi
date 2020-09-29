import 'package:comfacundi_app/Views/Partials/comfacundiBase.dart';
import 'package:comfacundi_app/Views/Partials/launchButton.dart';
import 'package:comfacundi_app/Views/UIs/credit/DetailCredit.dart/detailCreditSettings.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class DetailCredit extends StatelessWidget {
  final DetailCreditSettings settings;

  const DetailCredit({Key key, @required this.settings}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Base(
      bottomBarColor: Theme.of(context).canvasColor,
      containerColor: Theme.of(context).primaryColorDark,
      headerColor: Theme.of(context).primaryColorDark,
      icon: settings.icon,
      tag: settings.hero,
      title: settings.child.title,
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
                    '${settings.child.subtitle}\n\n${settings.child.description}',
                    textAlign: TextAlign.start,
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 11,
                    ),
                  ),
                  SizedBox(
                    height: 10,
                  ),
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
                                  'TASA',
                                  style: TextStyle(
                                      fontWeight: FontWeight.bold,
                                      color: Colors.white),
                                )),
                              ),
                            ),
                            _buildHeader(context,
                                text1: 'CATEGORÍA',
                                text2: 'A',
                                color1: Color.fromRGBO(262, 133, 180, 1),
                                color2: Color.fromRGBO(111, 203, 219, 1)),
                            _buildHeader(context,
                                text1: 'CATEGORÍA',
                                text2: 'B',
                                color1: Color.fromRGBO(232, 156, 174, 1),
                                color2: Color.fromRGBO(216, 171, 178, 1)),
                            _buildHeader(context,
                                text1: 'CATEGORÍA',
                                text2: 'C',
                                color1: Color.fromRGBO(206, 151, 110, 1),
                                color2: Color.fromRGBO(221, 189, 159, 1)),
                          ],
                        ),
                        Row(
                          children: <Widget>[
                            if (settings.child.tN.a != '-' &&
                                settings.child.tEA.a != '-')
                              _buildBody(texts: [
                                'Tasa Mensual',
                                'Tasa Nominal',
                                'Tasa Efectiva Anual'
                              ]),
                            if (settings.child.tN.a == '-' &&
                                settings.child.tEA.a == '-')
                              _buildBody(texts: [
                                'Tasa Mensual',
                              ]),
                            _buildBody(texts: [
                              settings.child.tM.a,
                              settings.child.tN.a,
                              settings.child.tEA.a
                            ]),
                            _buildBody(texts: [
                              settings.child.tM.b,
                              settings.child.tN.b,
                              settings.child.tEA.b
                            ]),
                            _buildBody(texts: [
                              settings.child.tM.c,
                              settings.child.tN.c,
                              settings.child.tEA.c
                            ]),
                          ],
                        )
                      ],
                    ),
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  Container(
                    width: 70,
                    height: 70,
                    child: SvgPicture.asset(
                      'assets/svg/asesor.svg',
                      allowDrawingOutsideViewBox: true,
                    ),
                  ),
                  LaunchButton(
                    text: 'Asesor Virtual'.toUpperCase(),
                    url: settings.child.url,
                  ), //widget.settings.child.url
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

  _buildHeader(BuildContext context,
      {String text1, String text2, Color color1, Color color2}) {
    return Expanded(
      child: Container(
        height: 50,
        decoration: BoxDecoration(
            borderRadius: BorderRadius.only(
                topLeft: Radius.circular(10), topRight: Radius.circular(10)),
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
                            fontWeight: FontWeight.bold, color: Colors.white),
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

  _buildBody({List<String> texts}) {
    List<String> aux = [];
    texts.forEach((el) {
      if (el != '-') {
        aux.add(el);
      }
    });
    return Expanded(
      child: Container(
        height: 33.3 * aux.length,
        decoration: BoxDecoration(
            borderRadius: BorderRadius.only(
                bottomLeft: Radius.circular(10),
                bottomRight: Radius.circular(10)),
            color: Colors.white),
        child: Column(
          mainAxisSize: MainAxisSize.max,
          children: aux.map((element) {
            return Expanded(
              child: Container(
                child: Center(
                  child: Text(
                    element,
                    textAlign: TextAlign.center,
                    style: TextStyle(
                        fontSize: 8, color: Color.fromRGBO(0, 40, 82, 1)),
                  ),
                ),
              ),
            );
          }).toList(),
        ),
      ),
    );
  }
}
