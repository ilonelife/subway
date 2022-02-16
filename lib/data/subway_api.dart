import 'dart:convert';

import 'package:http/http.dart' as http;
import 'package:subway/model/subway.dart';
import 'package:subway/model/subway_repository.dart';

class SubwayApi implements SubwayRepository {
  @override
  Future<List<Subway>> fetchSubway(String query) async {
    final response = await http.get(Uri.parse(
        'http://swopenapi.seoul.go.kr/api/subway/sample/json/realtimeStationArrival/0/5/$query'));

    if (response.statusCode == 200) {
      List jsonList = jsonDecode(response.body)['realtimeArrivalList'];
      return jsonList.map((e) => Subway.fromJson(e)).toList();
    } else {
      throw Exception('Fail to load subway data');
    }
  }
}
