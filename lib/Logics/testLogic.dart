import 'package:meta/meta.dart';

abstract class TestLogic {
  int increment({@required int number});
}

class TestTestLogic extends TestLogic{
  @override
  int increment({int number}) {
    int aux =number+1;
    return aux;
  }
}