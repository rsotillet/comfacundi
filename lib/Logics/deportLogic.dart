import 'dart:convert';

import 'package:comfacundi_app/Models/DeportClasses.dart';
import 'package:flutter/services.dart';

abstract class DeportLogic {
  Future<Deport> loadData();
}

class DeportLocal extends DeportLogic {
  @override
  Future<Deport> loadData() async {
    String aux = await rootBundle.loadString('assets/data/Deport.json');
    Map turism = jsonDecode(aux);
    return Deport.fromJson(turism);
  }
}
