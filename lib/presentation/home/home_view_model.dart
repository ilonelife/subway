import 'package:flutter/material.dart';
import 'package:subway/data/subway_api.dart';

import '../../model/subway.dart';

class HomeViewModel with ChangeNotifier {
  List<Subway> subways = [];

  SubwayApi _api;

  HomeViewModel(this._api);

  Future<void> fetchSubway(String query) async {
    subways = await _api.fetchSubway(query);
    notifyListeners();
  }
}
