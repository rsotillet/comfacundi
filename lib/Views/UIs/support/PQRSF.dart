import 'package:comfacundi_app/Views/Partials/comfacundiBase.dart';
import 'package:comfacundi_app/Views/Partials/launchButton.dart';
import 'package:flutter/material.dart';

class PQRSF extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Base(
      title: '¡PQRSF!',
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
          child: Column(
            children: <Widget>[
              Expanded(
                child: Container(
                  padding: const EdgeInsets.all(16.0),
                  child: SingleChildScrollView(
                    child: Text(
                      'Registra en este formulario tus felicitaciones, sugerencias, peticiones, quejas y reclamos, que nos ayudarán a mejorar la calidad del servicio.' +
                          '\n\n-Quejas, reclamos y denuncias: Se refieren a manifestaciones de inconformidad y conflicto entre la Caja de compensación y sus grupos de interés; expresión de insatisfacción hecha con respecto a la escucha de la voz de sus clientes o al propio proceso de PQRS, donde se espera una respuesta oportuna e idónea.' +
                          '\n\n-Solicitudes y Peticiones: Son aquellas relacionadas con una necesidad de información, obedecen al compromiso de mantener informada a la población afiliada y/o ciudadanía en general, también relacionadas con orientar a los grupos de interés respecto a los diferentes trámites ante la Caja de compensación.' +
                          '\n\n-Felicitaciones: Son un estímulo del afiliado y ciudadanía en general de los aspectos que se encuentran funcionando adecuadamente dentro de la organización.' +
                          '\n\n-Sugerencias: Manifestación de una idea o propuesta de una persona para mejorar un determinado servicio.',
                      style:
                          TextStyle(color: Theme.of(context).primaryColorDark),
                    ),
                  ),
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(20),
                    color: Colors.white.withOpacity(.7),
                  ),
                ),
              ),
              Padding(
                padding: EdgeInsets.symmetric(vertical: 5.0),
                child: LaunchButton(
                  text: 'Registrar',
                  url: 'https://www.comfacundi.com.co/crear-pqrsf/',
                ),
              ),
              Padding(
                padding: EdgeInsets.symmetric(vertical: 5.0),
                child: LaunchButton(
                  text: 'Consultar',
                  url: 'https://www.comfacundi.com.co/consultar-estado-del-pqrsf/',
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
