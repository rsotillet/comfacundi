import 'package:comfacundi_app/Views/Partials/comfacundiBase.dart';
import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

class ListOptionSupportPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Base(
      title: '¡TU ERES MUY IMPORTANTE PARA NOSOTROS!',
      tag: 'support',
      icon: 'assets/svg/at_cliente.svg',
      headerColor: Theme.of(context).primaryColorDark,
      bottomBarColor: Theme.of(context).primaryColorDark,
      withSupport: false,
      child: Padding(
        padding: const EdgeInsets.all(50.0),
        child: Card(
          child: ListView(padding: EdgeInsets.zero, children: <Widget>[
            ListTile(
              onTap: () {
                Navigator.pushNamed(context, '/atentionCanals');
              },
              title: Text(
                'Canales de Atención'.toUpperCase(),
                style: TextStyle(
                  color: Theme.of(context).primaryColorDark,
                ),
              ),
              trailing: Icon(Icons.keyboard_arrow_right),
            ),
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 8.0),
              child: Divider(
                color: Theme.of(context).canvasColor,
              ),
            ),
            ListTile(
              onTap: () async {
                String url =
                    'https://www.comfacundi.com.co/preguntas-frecuentes/';
                if (await canLaunch(url)) {
                  await launch(url);
                } else {
                  print('Could not launch $url');
                }
              },
              title: Text(
                'Preguntas Frecuentes'.toUpperCase(),
                style: TextStyle(
                  color: Theme.of(context).primaryColorDark,
                ),
              ),
              trailing: Icon(Icons.keyboard_arrow_right),
            ),
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 8.0),
              child: Divider(
                color: Theme.of(context).canvasColor,
              ),
            ),
          ]),
        ),
      ),
    );
  }
}
