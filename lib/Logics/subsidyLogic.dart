import 'dart:convert';

import 'package:comfacundi_app/Models/SubsidyClasses.dart';
import 'package:flutter/services.dart';

abstract class SubsidyLogic {
  Future<Subsidy> loadData();
}

class SubsidyLocal extends SubsidyLogic {
  @override
  Future<Subsidy> loadData() async {
    String aux = await rootBundle.loadString('assets/data/Subsidy.json');
    Map turism = jsonDecode(aux);
    return Subsidy.fromJson(turism);
  }
}
