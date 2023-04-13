class StatusModels {
  Statis? statis;
  Today? today;
  Result? result;

  StatusModels({this.statis, this.today, this.result});

  StatusModels.fromJson(Map<String, dynamic> json) {
    statis =
        json['statis'] != null ? new Statis.fromJson(json['statis']) : null;
    today = json['today'] != null ? new Today.fromJson(json['today']) : null;
    result =
        json['result'] != null ? new Result.fromJson(json['result']) : null;
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    if (this.statis != null) {
      data['statis'] = this.statis!.toJson();
    }
    if (this.today != null) {
      data['today'] = this.today!.toJson();
    }
    if (this.result != null) {
      data['result'] = this.result!.toJson();
    }
    return data;
  }
}

class Statis {
  String? steps;
  String? result;

  Statis({this.steps, this.result});

  Statis.fromJson(Map<String, dynamic> json) {
    steps = json['steps'];
    result = json['result'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['steps'] = this.steps;
    data['result'] = this.result;
    return data;
  }
}

class Today {
  String? date;
  String? duration;
  String? todo;
  String? done;

  Today({this.date, this.duration, this.todo, this.done});

  Today.fromJson(Map<String, dynamic> json) {
    date = json['date'];
    duration = json['duration'];
    todo = json['todo'];
    done = json['done'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['date'] = this.date;
    data['duration'] = this.duration;
    data['todo'] = this.todo;
    data['done'] = this.done;
    return data;
  }
}

class Result {
  String? steps;
  String? coins;

  Result({this.steps, this.coins});

  Result.fromJson(Map<String, dynamic> json) {
    steps = json['steps'];
    coins = json['coins'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['steps'] = this.steps;
    data['coins'] = this.coins;
    return data;
  }
}
