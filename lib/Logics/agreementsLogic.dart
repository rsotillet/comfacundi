import 'dart:convert';

import 'package:comfacundi_app/Models/AgreementsClasses.dart';
import 'package:flutter/services.dart';

abstract class AgreementsLogic {
  Future<Agreements> loadData();
}

class AgreementsLocal extends AgreementsLogic {
  @override
  Future<Agreements> loadData() async {
    String aux = await rootBundle.loadString('assets/data/Agreements.json');
    Map turism = jsonDecode(aux);
    return Agreements.fromJson(turism);
  }
}
