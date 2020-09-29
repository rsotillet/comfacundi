import 'dart:convert';

import 'package:comfacundi_app/Models/CreditClasses.dart';
import 'package:flutter/services.dart';

abstract class CreditLogic {
  Future<Credit> loadData();
}

class CreditLocal extends CreditLogic {
  @override
  Future<Credit> loadData() async {
    String aux = await rootBundle.loadString('assets/data/Credit.json');
    Map turism = jsonDecode(aux);
    return Credit.fromJson(turism);
  }
}
