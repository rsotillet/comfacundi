import 'package:auto_size_text/auto_size_text.dart';
import 'package:comfacundi_app/Views/Partials/comfacundiBase.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:url_launcher/url_launcher.dart';

class AtentionCanals extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Base(
      title: '¡NUESTROS CANALES DE ATENCIÓN!',
      headerColor: Theme.of(context).primaryColor,
      bottomBarColor: Theme.of(context).primaryColorLight,
      withSupport: false,
      tag: 'support',
      icon: 'assets/svg/at_cliente.svg',
      decorationImage: DecorationImage(
        image: AssetImage(
          'assets/pictures/bg_gris.jpg',
        ),
        fit: BoxFit.cover,
      ),
      child: Padding(
        padding: const EdgeInsets.symmetric(
          horizontal: 30.0,
          vertical: 70,
        ),
        child: Center(
          child: Container(
            padding: const EdgeInsets.all(16.0),
            child: Column(children: <Widget>[
              Expanded(
                  child: Container(
                child: Column(
                  children: <Widget>[
                    Expanded(
                      child: Container(
                        child: Column(
                          children: <Widget>[
                            Text(
                              'CAJA DE COMPENSACIÓN:',
                              style: TextStyle(
                                  fontWeight: FontWeight.bold,
                                  color: Theme.of(context).primaryColorDark),
                            ),
                            Expanded(
                              child: Column(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: <Widget>[
                                  _Info(
                                    icon: Icons.phone_in_talk,
                                    text: '379 0909',
                                  ),
                                  _Info(
                                    icon: Icons.mail,
                                    text: 'servicioalcliente@comfacundi.com.co',
                                  ),
                                  _Info(
                                    icon: Icons.location_on,
                                    text: 'Calle 53 # 10-39',
                                  ),
                                ],
                              ),
                            )
                          ],
                        ),
                      ),
                    ),
                    Padding(
                      padding: EdgeInsets.symmetric(horizontal: 8.0),
                      child: Divider(
                        color: Theme.of(context).primaryColorDark,
                      ),
                    ),
                  ],
                ),
              )),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: <Widget>[
                  Container(
                    width: 50,
                    height: 50,
                    child: TextButton(
                      onPressed: () async {
                        String url = 'https://www.comfacundi.com.co/chat.html';
                        if (await canLaunch(url)) {
                          await launch(url);
                        } else {
                          print('Could not launch $url');
                        }
                      },
                      child: Container(
                        height: 40,
                        width: 40,
                        child: SvgPicture.asset(
                          'assets/svg/sms.svg',
                          allowDrawingOutsideViewBox: true,
                        ),
                      ),
                    ),
                  ),
                  Container(
                    width: 50,
                    height: 50,
                    child: TextButton(
                      onPressed: () async {
                        String url = 'https://www.facebook.com/comfacundi';
                        if (await canLaunch(url)) {
                          await launch(url);
                        } else {
                          print('Could not launch $url');
                        }
                      },
                      child: Container(
                        height: 40,
                        width: 40,
                        child: SvgPicture.asset(
                          'assets/svg/facebook.svg',
                          allowDrawingOutsideViewBox: true,
                        ),
                      ),
                    ),
                  ),
                  Container(
                    width: 50,
                    height: 50,
                    child: TextButton(
                      onPressed: () async {
                        String url = 'https://twitter.com/comfacundi';
                        if (await canLaunch(url)) {
                          await launch(url);
                        } else {
                          print('Could not launch $url');
                        }
                      },
                      child: Container(
                        height: 40,
                        width: 40,
                        child: SvgPicture.asset(
                          'assets/svg/twitter.svg',
                          allowDrawingOutsideViewBox: true,
                        ),
                      ),
                    ),
                  ),
                  Container(
                    width: 50,
                    height: 50,
                    child: TextButton(
                      onPressed: () async {
                        String url =
                            'https://www.instagram.com/comfacundioficial/';
                        if (await canLaunch(url)) {
                          await launch(url);
                        } else {
                          print('Could not launch $url');
                        }
                      },
                      child: Container(
                        height: 40,
                        width: 40,
                        child: SvgPicture.asset(
                          'assets/svg/instagram.svg',
                          allowDrawingOutsideViewBox: true,
                        ),
                      ),
                    ),
                  )
                ],
              ),
              Padding(
                padding: EdgeInsets.symmetric(horizontal: 8.0),
                child: Divider(
                  color: Theme.of(context).primaryColorDark,
                ),
              ),
              ListTile(
                onTap: () {
                  Navigator.pushNamed(context, '/PQRSF');
                },
                title: Text(
                  'PQRSF'.toUpperCase(),
                  style: TextStyle(
                    color: Theme.of(context).primaryColorDark,
                  ),
                ),
                trailing: Icon(
                  Icons.keyboard_arrow_right,
                  color: Theme.of(context).primaryColorDark,
                ),
              ),
              Padding(
                padding: EdgeInsets.symmetric(horizontal: 8.0),
                child: Divider(
                  color: Theme.of(context).primaryColorDark,
                ),
              ),
              ListTile(
                onTap: () {
                  Navigator.pushNamed(context, '/contactUs');
                },
                title: Text(
                  'CONTÁCTANOS'.toUpperCase(),
                  style: TextStyle(
                    color: Theme.of(context).primaryColorDark,
                  ),
                ),
                trailing: Icon(
                  Icons.keyboard_arrow_right,
                  color: Theme.of(context).primaryColorDark,
                ),
              ),
              Padding(
                padding: EdgeInsets.symmetric(horizontal: 8.0),
                child: Divider(
                  color: Theme.of(context).primaryColorDark,
                ),
              ),
            ]),
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(20),
              color: Theme.of(context).primaryColorLight,
            ),
          ),
        ),
      ),
    );
  }
}

class _Info extends StatelessWidget {
  final IconData icon;
  final String text;

  const _Info({Key key, @required this.icon, @required this.text})
      : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Row(
      children: <Widget>[
        Icon(
          icon,
          color: Theme.of(context).primaryColorDark,
        ),
        Expanded(
          child: Padding(
            padding: EdgeInsets.only(left: 10),
            child: AutoSizeText(
              text,
              style: TextStyle(color: Theme.of(context).primaryColorDark),
            ),
          ),
        ),
      ],
    );
  }
}
