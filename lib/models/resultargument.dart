import '../core.dart';

class ResultArgument {
  List<TangoTestResult> tangoTestResultList;
  int numberOfCorrectAns;
  String test;

  ResultArgument(this.tangoTestResultList, this.numberOfCorrectAns, this.test);
}
