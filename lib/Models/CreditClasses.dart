class Credit {
  List<Items> items;

  Credit({this.items});

  Credit.fromJson(Map<String, dynamic> json) {
    if (json['items'] != null) {
      items = [];
      json['items'].forEach((v) {
        items.add(new Items.fromJson(v));
      });
    }
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    if (this.items != null) {
      data['items'] = this.items.map((v) => v.toJson()).toList();
    }
    return data;
  }
}

class Items {
  String title;
  String subtitle;
  String hero;
  String icon;
  Child child;

  Items({this.title, this.subtitle, this.hero, this.icon, this.child});

  Items.fromJson(Map<String, dynamic> json) {
    title = json['title'];
    subtitle = json['subtitle'];
    hero = json['hero'];
    icon = json['icon'];
    child = json['child'] != null ? new Child.fromJson(json['child']) : null;
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['title'] = this.title;
    data['subtitle'] = this.subtitle;
    data['hero'] = this.hero;
    data['icon'] = this.icon;
    if (this.child != null) {
      data['child'] = this.child.toJson();
    }
    return data;
  }
}

class Child {
  String title;
  String subtitle;
  String description;
  String url;
  TM tM;
  TM tN;
  TM tEA;

  Child(
      {this.title,
      this.subtitle,
      this.description,
      this.url,
      this.tM,
      this.tN,
      this.tEA});

  Child.fromJson(Map<String, dynamic> json) {
    title = json['title'];
    subtitle = json['subtitle'];
    description = json['description'];
    url = json['url'];
    tM = json['TM'] != null ? new TM.fromJson(json['TM']) : null;
    tN = json['TN'] != null ? new TM.fromJson(json['TN']) : null;
    tEA = json['TEA'] != null ? new TM.fromJson(json['TEA']) : null;
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['title'] = this.title;
    data['subtitle'] = this.subtitle;
    data['description'] = this.description;
    data['url'] = this.url;
    if (this.tM != null) {
      data['TM'] = this.tM.toJson();
    }
    if (this.tN != null) {
      data['TN'] = this.tN.toJson();
    }
    if (this.tEA != null) {
      data['TEA'] = this.tEA.toJson();
    }
    return data;
  }
}

class TM {
  String a;
  String b;
  String c;

  TM({this.a, this.b, this.c});

  TM.fromJson(Map<String, dynamic> json) {
    a = json['A'];
    b = json['B'];
    c = json['C'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['A'] = this.a;
    data['B'] = this.b;
    data['C'] = this.c;
    return data;
  }
}