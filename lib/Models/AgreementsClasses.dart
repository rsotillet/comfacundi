class Agreements {
  List<Items> items;

  Agreements({this.items});

  Agreements.fromJson(Map<String, dynamic> json) {
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
  List<Children> children;

  Items({this.title, this.subtitle, this.hero, this.icon, this.children});

  Items.fromJson(Map<String, dynamic> json) {
    title = json['title'];
    subtitle = json['subtitle'];
    hero = json['hero'];
    icon = json['icon'];
    if (json['children'] != null) {
      children = [];
      json['children'].forEach((v) {
        children.add(new Children.fromJson(v));
      });
    }
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['title'] = this.title;
    data['subtitle'] = this.subtitle;
    data['hero'] = this.hero;
    data['icon'] = this.icon;
    if (this.children != null) {
      data['children'] = this.children.map((v) => v.toJson()).toList();
    }
    return data;
  }
}

class Children {
  String title;
  String image;
  String benefit;
  String direction;
  String phone;
  String web;

  Children(
      {this.title,
      this.image,
      this.benefit,
      this.direction,
      this.phone,
      this.web});

  Children.fromJson(Map<String, dynamic> json) {
    title = json['title'];
    image = json['image'];
    benefit = json['benefit'];
    direction = json['direction'];
    phone = json['phone'];
    web = json['web'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['title'] = this.title;
    data['image'] = this.image;
    data['benefit'] = this.benefit;
    data['direction'] = this.direction;
    data['phone'] = this.phone;
    data['web'] = this.web;
    return data;
  }
}