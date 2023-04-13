class ProfileModels {
  String? _img;
  String? _title;
  String? _name;

  ProfileModels({String? img, String? title, String? name}) {
    if (img != null) {
      this._img = img;
    }
    if (title != null) {
      this._title = title;
    }
    if (name != null) {
      this._name = name;
    }
  }

  String? get img => _img;
  set img(String? img) => _img = img;
  String? get title => _title;
  set title(String? title) => _title = title;
  String? get name => _name;
  set name(String? name) => _name = name;

  ProfileModels.fromJson(Map<String, dynamic> json) {
    _img = json['img'];
    _title = json['title'];
    _name = json['name'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['img'] = this._img;
    data['title'] = this._title;
    data['name'] = this._name;
    return data;
  }
}
