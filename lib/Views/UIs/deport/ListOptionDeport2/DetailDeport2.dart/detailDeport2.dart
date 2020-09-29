import 'package:auto_size_text/auto_size_text.dart';
import 'package:comfacundi_app/Views/Partials/comfacundiBase.dart';
import 'package:flutter/material.dart';

import 'detailDeport2Settings.dart';

class DetailDeport2 extends StatelessWidget {
  final DetailDeport2Settings settings;

  const DetailDeport2({Key key, @required this.settings}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Base(
      headerColor: Theme.of(context).primaryColorDark,
      bottomBarColor: Theme.of(context).canvasColor,
      title: settings.title,
      withSupport: false,
      icon: settings.icon,
      tag: settings.hero,
      decorationImage: DecorationImage(
        image: AssetImage(
          'assets/pictures/bg_azul.jpg',
        ),
        fit: BoxFit.cover,
      ),
      child: Center(
        child: Padding(
          padding: settings.child.type == 's'
              ? const EdgeInsets.all(50.0)
              : const EdgeInsets.all(20.0),
          child: Container(
            padding: const EdgeInsets.all(16.0),
            child: Container(
              child: SingleChildScrollView(
                child: Column(
                  mainAxisSize: MainAxisSize.min,
                  children: <Widget>[
                    Text(
                      '${settings.child.description}',
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
                      height: 250,
                      child: Scrollbar(
                        child: SingleChildScrollView(
                          child: Column(
                            children: <Widget>[_buildTable()],
                          ),
                        ),
                      ),
                    ),
                    SizedBox(
                      height: 20,
                    )
                  ],
                ),
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

  _buildHeader({String text1, String text2, Color color1, Color color2}) {
    return Expanded(
      child: Container(
        height: 40,
        decoration: BoxDecoration(
            borderRadius: BorderRadius.only(
                topLeft: Radius.circular(5), topRight: Radius.circular(5)),
            color: color1),
        child: Column(
          mainAxisSize: MainAxisSize.max,
          children: <Widget>[
            Expanded(
              child: Padding(
                padding: const EdgeInsets.symmetric(vertical: 5),
                child: Text(
                  text1,
                  style: TextStyle(
                      fontSize: 6,
                      color: Colors.white,
                      fontWeight: FontWeight.bold),
                ),
              ),
            ),
            Expanded(
              child: Container(
                color: color2,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: <Widget>[
                    Center(
                      child: AutoSizeText(
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

  _buildBody({List<String> texts, bool round: true, double fontSize: 10}) {
    return Expanded(
      child: Container(
        height: 33 * texts.length.toDouble(),
        decoration: BoxDecoration(
            borderRadius: round
                ? BorderRadius.only(
                    bottomLeft: Radius.circular(5),
                    bottomRight: Radius.circular(5))
                : BorderRadius.all(Radius.circular(0)),
            color: Colors.white),
        child: Column(
          mainAxisSize: MainAxisSize.max,
          children: <Widget>[
            ...texts.map((el) {
              return Expanded(
                child: Container(
                  decoration: BoxDecoration(
                      border: Border(
                          top: BorderSide(
                              color: Colors.grey.withOpacity(.5), width: .5))),
                  child: Center(
                    child: Text(
                      el,
                      textAlign: TextAlign.center,
                      style: TextStyle(
                          fontSize: fontSize,
                          color: Color.fromRGBO(0, 40, 82, 1)),
                    ),
                  ),
                ),
              );
            }),
            // Expanded(
            //   child: Container(
            //     child: Center(
            //       child: Text(text2,
            //           textAlign: TextAlign.center,
            //           style: TextStyle(
            //
            //               color: Color.fromRGBO(0, 40, 82, 1))),
            //     ),
            //   ),
            // ),
            // Divider(),
            // Expanded(
            //   child: Container(
            //     child: Center(
            //       child: Text(
            //         text3,
            //         textAlign: TextAlign.center,
            //         style: TextStyle(
            //
            //             color: Color.fromRGBO(0, 40, 82, 1)),
            //       ),
            //     ),
            //   ),
            // )
          ],
        ),
      ),
    );
  }

  _buildTable() {
    if ((settings.child.type == "s")) {
      //s-separado?
      return Column(
        children: <Widget>[
          ...settings.child.products.map((element) {
            return Padding(
              padding: const EdgeInsets.only(top: 20),
              child: Column(
                children: <Widget>[
                  Center(
                    child: Container(
                      decoration: BoxDecoration(
                          border: Border.all(color: Colors.white, width: 2)),
                      child: Padding(
                        padding: const EdgeInsets.symmetric(
                            vertical: 5, horizontal: 20),
                        child: Text(
                          element.title.toUpperCase(),
                          style: TextStyle(color: Colors.white),
                        ),
                      ),
                    ),
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  _buildSeparateHead(),
                  Row(
                    children: <Widget>[
                      _buildBody(texts: [element.a]),
                      _buildBody(texts: [element.b]),
                      _buildBody(texts: [element.c]),
                      _buildBody(texts: [element.d]),
                      _buildBody(texts: [element.agreement]),
                    ],
                  )
                ],
              ),
            );
          })
        ],
      );
    } else {
      // u-Unido?
      return Column(
        children: <Widget>[
          Center(
            child: Container(
              decoration: BoxDecoration(
                  border: Border.all(color: Colors.white, width: 2)),
              child: Padding(
                padding:
                    const EdgeInsets.symmetric(vertical: 5, horizontal: 20),
                child: Text(
                  'Tarifas'.toUpperCase(),
                  style: TextStyle(color: Colors.white),
                ),
              ),
            ),
          ),
          SizedBox(
            height: 10,
          ),
          _buildUnitHead(),
          ...settings.child.products.map((el) {
            var arr = [el.title, el.a, el.b, el.c, el.d, el.agreement];
            return Row(children: <Widget>[
              ...arr.map((element) {
                int aux = arr.indexOf(element);
                if (aux == 0) {
                  return _buildBody(
                      texts: [element], round: false, fontSize: 5);
                } else {
                  return _buildBody(texts: [element], round: false);
                }
              })
            ]);
          })
        ],
      );
    }
  }

  _buildSeparateHead() {
    return Row(
      children: <Widget>[
        _buildHeader(
            text1: 'CATEGORÍA',
            text2: 'A',
            color1: Color.fromRGBO(262, 133, 180, 1),
            color2: Color.fromRGBO(111, 203, 219, 1)),
        _buildHeader(
            text1: 'CATEGORÍA',
            text2: 'B',
            color1: Color.fromRGBO(232, 156, 174, 1),
            color2: Color.fromRGBO(216, 171, 178, 1)),
        _buildHeader(
            text1: 'CATEGORÍA',
            text2: 'C',
            color1: Color.fromRGBO(206, 151, 110, 1),
            color2: Color.fromRGBO(221, 189, 159, 1)),
        _buildHeader(
            text1: 'CATEGORÍA',
            text2: 'D',
            color1: Color.fromRGBO(158, 204, 110, 1),
            color2: Color.fromRGBO(186, 219, 161, 1)),
        Expanded(
          child: Container(
            height: 40,
            decoration: BoxDecoration(
                borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(10),
                    topRight: Radius.circular(10)),
                color: Color.fromRGBO(111, 203, 219, 1)),
            child: Center(
                child: Text(
              'CONVENIOS',
              style: TextStyle(
                  fontWeight: FontWeight.bold,
                  color: Colors.white,
                  fontSize: 7,
                  fontFamily: 'Montserrat'),
            )),
          ),
        ),
      ],
    );
  }

  _buildUnitHead() {
    return Row(
      children: <Widget>[
        Expanded(
          child: Container(
            height: 40,
            decoration: BoxDecoration(
                borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(10),
                    topRight: Radius.circular(10)),
                color: Color.fromRGBO(147, 149, 152, 1)),
            child: Center(
                child: Text(
              'Producto',
              style: TextStyle(
                  fontWeight: FontWeight.bold,
                  color: Colors.white,
                  fontSize: 7,
                  fontFamily: 'Montserrat'),
            )),
          ),
        ),
        _buildHeader(
            text1: 'CATEGORÍA',
            text2: 'A',
            color1: Color.fromRGBO(262, 133, 180, 1),
            color2: Color.fromRGBO(111, 203, 219, 1)),
        _buildHeader(
            text1: 'CATEGORÍA',
            text2: 'B',
            color1: Color.fromRGBO(232, 156, 174, 1),
            color2: Color.fromRGBO(216, 171, 178, 1)),
        _buildHeader(
            text1: 'CATEGORÍA',
            text2: 'C',
            color1: Color.fromRGBO(206, 151, 110, 1),
            color2: Color.fromRGBO(221, 189, 159, 1)),
        _buildHeader(
            text1: 'CATEGORÍA',
            text2: 'D',
            color1: Color.fromRGBO(158, 204, 110, 1),
            color2: Color.fromRGBO(186, 219, 161, 1)),
        Expanded(
          child: Container(
            height: 40,
            decoration: BoxDecoration(
                borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(10),
                    topRight: Radius.circular(10)),
                color: Color.fromRGBO(111, 203, 219, 1)),
            child: Center(
                child: Text(
              'CONVENIOS',
              style: TextStyle(
                  fontWeight: FontWeight.bold,
                  color: Colors.white,
                  fontSize: 7,
                  fontFamily: 'Montserrat'),
            )),
          ),
        ),
      ],
    );
  }
}
