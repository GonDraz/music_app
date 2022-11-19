class HomeModel {
  Message? message;
  Data? data;

  HomeModel({this.message, this.data});

  HomeModel.fromJson(Map<String, dynamic> json) {
    message =
        json['message'] != null ? new Message.fromJson(json['message']) : null;
    data = json['data'] != null ? new Data.fromJson(json['data']) : null;
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    if (this.message != null) {
      data['message'] = this.message!.toJson();
    }
    if (this.data != null) {
      data['data'] = this.data!.toJson();
    }
    return data;
  }
}

class Message {
  String? status;
  int? statusCode;
  String? text;

  Message({this.status, this.statusCode, this.text});

  Message.fromJson(Map<String, dynamic> json) {
    status = json['status'];
    statusCode = json['status_code'];
    text = json['text'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['status'] = this.status;
    data['status_code'] = this.statusCode;
    data['text'] = this.text;
    return data;
  }
}

class Data {
  List<TopCharts>? topCharts;
  List<NewReleases>? newReleases;

  Data({this.topCharts, this.newReleases});

  Data.fromJson(Map<String, dynamic> json) {
    if (json['top_charts'] != null) {
      topCharts = <TopCharts>[];
      json['top_charts'].forEach((v) {
        topCharts!.add(new TopCharts.fromJson(v));
      });
    }
    if (json['new_releases'] != null) {
      newReleases = <NewReleases>[];
      json['new_releases'].forEach((v) {
        newReleases!.add(new NewReleases.fromJson(v));
      });
    }
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    if (this.topCharts != null) {
      data['top_charts'] = this.topCharts!.map((v) => v.toJson()).toList();
    }
    if (this.newReleases != null) {
      data['new_releases'] = this.newReleases!.map((v) => v.toJson()).toList();
    }
    return data;
  }
}

class TopCharts {
  String? thumbnail;
  String? name;
  String? composer;
  String? time;

  TopCharts({this.thumbnail, this.name, this.composer, this.time});

  TopCharts.fromJson(Map<String, dynamic> json) {
    thumbnail = json['thumbnail '];
    name = json['name'];
    composer = json['composer'];
    time = json['time'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['thumbnail '] = this.thumbnail;
    data['name'] = this.name;
    data['composer'] = this.composer;
    data['time'] = this.time;
    return data;
  }
}

class NewReleases {
  String? thumbnail;
  String? name;
  String? composer;

  NewReleases({this.thumbnail, this.name, this.composer});

  NewReleases.fromJson(Map<String, dynamic> json) {
    thumbnail = json['thumbnail '];
    name = json['name'];
    composer = json['composer'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['thumbnail '] = this.thumbnail;
    data['name'] = this.name;
    data['composer'] = this.composer;
    return data;
  }
}
