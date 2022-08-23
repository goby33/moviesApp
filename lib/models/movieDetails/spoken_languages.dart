class SpokenLanguages {
  String? _englishName;
  String? _iso6391;
  String? _name;

  SpokenLanguages({String? englishName, String? iso6391, String? name}) {
    if (englishName != null) {
      this._englishName = englishName;
    }
    if (iso6391 != null) {
      this._iso6391 = iso6391;
    }
    if (name != null) {
      this._name = name;
    }
  }

  String? get englishName => _englishName;
  set englishName(String? englishName) => _englishName = englishName;
  String? get iso6391 => _iso6391;
  set iso6391(String? iso6391) => _iso6391 = iso6391;
  String? get name => _name;
  set name(String? name) => _name = name;

  SpokenLanguages.fromJson(Map<String, dynamic> json) {
    _englishName = json['english_name'];
    _iso6391 = json['iso_639_1'];
    _name = json['name'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['english_name'] = this._englishName;
    data['iso_639_1'] = this._iso6391;
    data['name'] = this._name;
    return data;
  }
}
