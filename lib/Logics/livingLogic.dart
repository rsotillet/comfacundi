import 'dart:convert';

import 'package:comfacundi_app/Models/LivingClasses.dart';
import 'package:flutter/services.dart';

abstract class LivingLogic {
  Future<Living> loadData();
}

class LivingLocal extends LivingLogic {
  @override
  Future<Living> loadData() async {
    String aux = await rootBundle.loadString('assets/data/Living.json');
    Map turism = jsonDecode(aux);
    return Living.fromJson(turism);
  }
}
