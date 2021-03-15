class Job {
  Vacants vacants;
  Rute rute;

  Job({this.vacants, this.rute});

  Job.fromJson(Map<String, dynamic> json) {
    vacants =
        json['vacants'] != null ? new Vacants.fromJson(json['vacants']) : null;
    rute = json['rute'] != null ? new Rute.fromJson(json['rute']) : null;
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    if (this.vacants != null) {
      data['vacants'] = this.vacants.toJson();
    }
    if (this.rute != null) {
      data['rute'] = this.rute.toJson();
    }
    return data;
  }
}

class Vacants {
  String title;
  String detail;
  String url;
  List<Child> child;

  Vacants({this.title, this.detail, this.url, this.child});

  Vacants.fromJson(Map<String, dynamic> json) {
    title = json['title'];
    detail = json['detail'];
    url = json['url'];
    if (json['child'] != null) {
      child = [];
      json['child'].forEach((v) {
        child.add(new Child.fromJson(v));
      });
    }
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['title'] = this.title;
    data['detail'] = this.detail;
    data['url'] = this.url;
    if (this.child != null) {
      data['child'] = this.child.map((v) => v.toJson()).toList();
    }
    return data;
  }
}

class Child {
  String title;
  String direction;
  String phone;

  Child({this.title, this.direction, this.phone});

  Child.fromJson(Map<String, dynamic> json) {
    title = json['title'];
    direction = json['direction'];
    phone = json['phone'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['title'] = this.title;
    data['direction'] = this.direction;
    data['phone'] = this.phone;
    return data;
  }
}

class Rute {
  String detail;
  String routeDetail;

  Rute({this.detail, this.routeDetail});

  Rute.fromJson(Map<String, dynamic> json) {
    detail = json['detail'];
    routeDetail = json['routeDetail'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['detail'] = this.detail;
    data['routeDetail'] = this.routeDetail;
    return data;
  }
}
