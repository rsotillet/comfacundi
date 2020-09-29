import 'dart:convert';

import 'package:comfacundi_app/Models/EducationClasses.dart';
import 'package:flutter/services.dart';

abstract class EducationLogic {
  Future<Education> loadData();
}

class EducationLocal extends EducationLogic {
  @override
  Future<Education> loadData() async {
    String aux = await rootBundle.loadString('assets/data/Education.json');
    Map turism = jsonDecode(aux);
    return Education.fromJson(turism);
  }
}
