import 'package:comfacundi_app/Blocs/simple_bloc_delegate.dart';
import 'package:comfacundi_app/Routers/Router.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import 'Config/Themes.dart';

void main() {
  WidgetsFlutterBinding.ensureInitialized();
  BlocSupervisor.delegate = SimpleBlocDelegate();
  runApp(App());
}

class App extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: Themes.principal,
      title: 'Comfacundi',
      initialRoute: '/',
      onGenerateRoute: (settings) => Router.generateRoute(settings),
    );
  }
}
