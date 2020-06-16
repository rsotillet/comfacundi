import 'package:comfacundi_app/Blocs/test/test_bloc.dart';
import 'package:comfacundi_app/Logics/testLogic.dart';
import 'package:comfacundi_app/Views/UIs/HomePage.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class Router {
  static Route<dynamic> generateRoute(
    RouteSettings settings,
  ) {
    switch (settings.name) {
      case '/':
        return MaterialPageRoute(builder: (_) {
          return BlocProvider<TestBloc>(
              create: (context) => TestBloc(testLogic: TestTestLogic()),
              child: HomePage(
                title: 'COMFACUNDI',
              ));
        });
      default:
        return MaterialPageRoute(
          builder: (_) => Scaffold(
            appBar: AppBar(
              title: Text('Error'),
            ),
            body: Center(
              child: Text('La ruta ${settings.name} no esta definida'),
            ),
          ),
        );
    }
  }
}
