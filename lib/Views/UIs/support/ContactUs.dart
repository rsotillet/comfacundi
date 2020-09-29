import 'package:comfacundi_app/Views/Partials/comfacundiBase.dart';
import 'package:comfacundi_app/Views/Partials/launchButton.dart';
import 'package:flutter/material.dart';

class ContactUs extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Base(
      title: 'Contáctanos',
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
            child: ListView(
              children: <Widget>[
                ExpansionTile(
                  title: Text(
                    'Caja de compensación'.toUpperCase(),
                    style: TextStyle(
                      color: Theme.of(context).primaryColorDark,
                    ),
                  ),
                  children: <Widget>[
                    Row(
                      mainAxisAlignment: MainAxisAlignment.end,
                      children: <Widget>[
                        LaunchButton(
                          url:
                              'https://www.comfacundi.com.co/contactenos-caja-de-compensacion-familiar/',
                          text: 'Contáctenos',
                        ),
                      ],
                    )
                  ],
                ),
                ExpansionTile(
                  title: Text(
                    'EPS'.toUpperCase(),
                    style: TextStyle(
                      color: Theme.of(context).primaryColorDark,
                    ),
                  ),
                  children: <Widget>[
                    ExpansionTile(
                      title: Text(
                        'Régimen Subsidiado'.toUpperCase(),
                        style: TextStyle(
                            color: Theme.of(context).primaryColorDark,
                            fontStyle: FontStyle.italic),
                      ),
                      children: <Widget>[
                        Row(
                          mainAxisAlignment: MainAxisAlignment.end,
                          children: <Widget>[
                            LaunchButton(
                              url:
                                  'https://www.comfacundi.com.co/contactenos-regimen-subsidiado/',
                              text: 'Contáctenos',
                            ),
                          ],
                        )
                      ],
                    ),
                    ExpansionTile(
                      title: Text(
                        'Régimen Contributivo'.toUpperCase(),
                        style: TextStyle(
                            color: Theme.of(context).primaryColorDark,
                            fontStyle: FontStyle.italic),
                      ),
                      children: <Widget>[
                        Row(
                          mainAxisAlignment: MainAxisAlignment.end,
                          children: <Widget>[
                            LaunchButton(
                              url:
                                  'https://www.comfacundi.com.co/contactenos-regimen-contributivo/',
                              text: 'Contáctenos',
                            ),
                          ],
                        )
                      ],
                    )
                  ],
                )
              ],
            ),
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(20),
              color: Colors.white.withOpacity(.7),
            ),
          ),
        ),
      ),
    );
  }
}
