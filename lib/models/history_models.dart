class HistoryModels {
  List<Data>? data;

  HistoryModels({this.data});

  HistoryModels.fromJson(Map<String, dynamic> json) {
    if (json['data'] != null) {
      data = <Data>[];
      json['data'].forEach((v) {
        data!.add (new Data.fromJson(v));
      });
    }
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    if (this.data != null) {
      data['data'] = this.data!.map((v) => v.toJson()).toList();
    }
    return data;
  }
}

class Data {
  String? date;
  String? pt;
  String? km;
  String? kcol;
  String? steps;

  Data({this.date, this.pt, this.km, this.kcol, this.steps});

  Data.fromJson(Map<String, dynamic> json) {
    date = json['date'];
    pt = json['pt'];
    km = json['km'];
    kcol = json['kcol'];
    steps = json['steps'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['date'] = this.date;
    data['pt'] = this.pt;
    data['km'] = this.km;
    data['kcol'] = this.kcol;
    data['steps'] = this.steps;
    return data;
  }
}
