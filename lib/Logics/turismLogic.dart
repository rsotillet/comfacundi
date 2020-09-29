import 'dart:convert';

import 'package:comfacundi_app/Models/TurismClasses.dart';
import 'package:flutter/services.dart';

abstract class TurismLogic {
  Future<Turism> loadData();
}

class TurismLocal extends TurismLogic {
  @override
  Future<Turism> loadData() async {
    String aux = await rootBundle.loadString('assets/data/Turism.json');
    Map turism = jsonDecode(aux);
    return Turism.fromJson(turism);
  }
}
