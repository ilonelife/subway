class Subway {
  Subway({
    required this.updnLine,
    required this.trainLineNm,
    required this.subwayHeading,
    required this.statnNm,
    required this.bstatnNm,
    required this.recptnDt,
    required this.arvlMsg2,
    required this.arvlMsg3,
  });

  late final String updnLine;
  late final String trainLineNm;
  late final String subwayHeading;
  late final String statnNm;
  late final String bstatnNm;
  late final String recptnDt;
  late final String arvlMsg2;
  late final String arvlMsg3;

  factory Subway.fromJson(Map<String, dynamic> json) {
    return Subway(
      updnLine: json['updnLine'],
      trainLineNm: json['trainLineNm'],
      subwayHeading: json['subwayHeading'],
      statnNm: json['statnNm'],
      bstatnNm: json['bstatnNm'],
      recptnDt: json['recptnDt'],
      arvlMsg2: json['arvlMsg2'],
      arvlMsg3: json['arvlMsg3'],
    );
  }

  Map<String, dynamic> toJson() {
    final _data = <String, dynamic>{};
    _data['updnLine'] = updnLine;
    _data['trainLineNm'] = trainLineNm;
    _data['subwayHeading'] = subwayHeading;
    _data['statnNm'] = statnNm;
    _data['bstatnNm'] = bstatnNm;
    _data['recptnDt'] = recptnDt;
    _data['arvlMsg2'] = arvlMsg2;
    _data['arvlMsg3'] = arvlMsg3;
    return _data;
  }
}
