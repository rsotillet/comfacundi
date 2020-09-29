import 'dart:convert';
import 'package:comfacundi_app/Models/JobClasses.dart';
import 'package:flutter/services.dart';

abstract class JobLogic {
  Future<Job> loadData();
}

class JobLocal extends JobLogic {
  @override
  Future<Job> loadData() async {
    String aux = await rootBundle.loadString('assets/data/Job.json');
    Map turism = jsonDecode(aux);
    return Job.fromJson(turism);
  }
}
