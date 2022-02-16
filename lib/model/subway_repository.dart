import 'package:subway/model/subway.dart';

abstract class SubwayRepository {
  Future<List<Subway>> fetchSubway(String query);
}
