import 'package:auto_size_text/auto_size_text.dart';
import 'package:comfacundi_app/Views/Partials/rotateBackGround.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class Base extends StatelessWidget {
  final String title;
  final Widget child;
  final String icon;
  final String tag;
  final Color headerColor;
  final Color containerColor;
  final Color bottomBarColor;
  final bool withSupport;
  final bool withIcon;
  final bool withHomeButton;
  final DecorationImage decorationImage;
  final double heightBody;

  const Base({
    Key key,
    this.title,
    this.child,
    this.icon,
    this.tag,
    this.headerColor,
    this.containerColor: Colors.white,
    this.bottomBarColor,
    this.withSupport: true,
    this.withIcon: true,
    this.withHomeButton: true,
    this.decorationImage,
    this.heightBody: 0.0,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        color: headerColor,
        child: SafeArea(
          child: Stack(
            children: <Widget>[
              Positioned(
                top: 15,
                child: Container(
                  width: MediaQuery.of(context).size.width,
                  padding: EdgeInsets.symmetric(horizontal: 20),
                  child: Row(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: <Widget>[
                      Expanded(
                        child: Column(
                          mainAxisSize: MainAxisSize.min,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: <Widget>[
                            Container(
                              height: MediaQuery.of(context).size.height * .1,
                              child: AutoSizeText(
                                this
                                    .title
                                    .toUpperCase(), //'¡Invertir en viajar es\ninvetir en uno\n mismo!',
                                style: TextStyle(
                                    fontSize: 50,
                                    color: Colors.white,
                                    fontWeight: FontWeight.bold),
                              ),
                            ),
                          ],
                        ),
                      ),
                      if (withHomeButton)
                        IconButton(
                          icon: Icon(
                            Icons.home,
                            color: Colors.white,
                          ),
                          onPressed: () {
                            Navigator.of(context).pushNamedAndRemoveUntil(
                                '/', (Route<dynamic> route) => false);
                          },
                        )
                    ],
                  ),
                ),
              ),
              Positioned(
                bottom: 0,
                child: Stack(
                  clipBehavior: Clip.none,
                  children: <Widget>[
                    Container(
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.vertical(
                              top: Radius.elliptical(500, 200),
                            ),
                            image: decorationImage,
                            color: containerColor),
                        width: MediaQuery.of(context).size.width,
                        height: (heightBody == 0.0)
                            ? MediaQuery.of(context).size.height * .75
                            : heightBody,
                        child: Padding(
                          padding: EdgeInsets.only(bottom: 30),
                          child: child,
                        )),
                    if (withIcon)
                      Positioned(
                        top: -50,
                        width: MediaQuery.of(context).size.width,
                        child: Center(
                          child: Container(
                            width: 100,
                            height: 100,
                            child: Hero(
                              tag: tag,
                              child: Stack(
                                alignment: Alignment.center,
                                children: <Widget>[
                                  ImageRotate(),
                                  Container(
                                    width: 50,
                                    height: 50,
                                    child: SvgPicture.asset(
                                      icon,
                                      allowDrawingOutsideViewBox: true,
                                    ),
                                  )
                                ],
                              ),
                            ),
                          ),
                        ),
                      ),
                    Positioned(
                      bottom: 0,
                      child: Container(
                        width: MediaQuery.of(context).size.width,
                        height: 30,
                        color: bottomBarColor,
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: <Widget>[
                            Text(
                              '#EstamosContigo',
                              style: TextStyle(
                                  color: Colors.white,
                                  fontWeight: FontWeight.bold),
                            ),
                          ],
                        ),
                      ),
                    )
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.endDocked,
      floatingActionButton: (withSupport)
          ? Padding(
              padding: const EdgeInsets.only(bottom: 29),
              child: MaterialButton(
                onPressed: () {
                  Navigator.pushNamed(context, '/support');
                },
                child: Row(
                  mainAxisSize: MainAxisSize.min,
                  crossAxisAlignment: CrossAxisAlignment.end,
                  children: <Widget>[
                    Padding(
                      padding: EdgeInsets.only(bottom: 5),
                      child: Text(
                        'Servicio\nal Cliente',
                        textAlign: TextAlign.center,
                        style: TextStyle(
                            fontSize: 10, color: Color.fromRGBO(0, 40, 82, 1)),
                      ),
                    ),
                    Container(
                      height: 70,
                      width: 50,
                      child: Hero(
                        tag: 'support',
                        child: SvgPicture.asset(
                          'assets/svg/at_cliente.svg',
                          fit: BoxFit.contain,
                        ),
                      ),
                    )
                  ],
                ),
              ),
            )
          : Container(),
    );
  }
}
