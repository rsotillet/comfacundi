class Deport {
  List<Items> items;

  Deport({this.items});

  Deport.fromJson(Map<String, dynamic> json) {
    if (json['items'] != null) {
      items = new List<Items>();
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
  String icon;
  String tag;
  String detail;
  String url;
  List<Children> children;

  Items(
      {this.title,
      this.subtitle,
      this.icon,
      this.tag,
      this.detail,
      this.url,
      this.children});

  Items.fromJson(Map<String, dynamic> json) {
    title = json['title'];
    subtitle = json['subtitle'];
    icon = json['icon'];
    tag = json['tag'];
    detail = json['detail'];
    url = json['url'];
    if (json['children'] != null) {
      children = new List<Children>();
      json['children'].forEach((v) {
        children.add(new Children.fromJson(v));
      });
    }
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['title'] = this.title;
    data['subtitle'] = this.subtitle;
    data['icon'] = this.icon;
    data['tag'] = this.tag;
    data['detail'] = this.detail;
    data['url'] = this.url;
    if (this.children != null) {
      data['children'] = this.children.map((v) => v.toJson()).toList();
    }
    return data;
  }
}

class Children {
  String title;
  String subtitle;
  String description;
  String type;
  List<Products> products;

  Children(
      {this.title, this.subtitle, this.description, this.type, this.products});

  Children.fromJson(Map<String, dynamic> json) {
    title = json['title'];
    subtitle = json['subtitle'];
    description = json['description'];
    type = json['type'];
    if (json['products'] != null) {
      products = new List<Products>();
      json['products'].forEach((v) {
        products.add(new Products.fromJson(v));
      });
    }
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['title'] = this.title;
    data['subtitle'] = this.subtitle;
    data['description'] = this.description;
    data['type'] = this.type;
    if (this.products != null) {
      data['products'] = this.products.map((v) => v.toJson()).toList();
    }
    return data;
  }
}

class Products {
  String title;
  String a;
  String b;
  String c;
  String d;
  String agreement;

  Products({this.title, this.a, this.b, this.c, this.d, this.agreement});

  Products.fromJson(Map<String, dynamic> json) {
    title = json['title'];
    a = json['a'];
    b = json['b'];
    c = json['c'];
    d = json['d'];
    agreement = json['agreement'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['title'] = this.title;
    data['a'] = this.a;
    data['b'] = this.b;
    data['c'] = this.c;
    data['d'] = this.d;
    data['agreement'] = this.agreement;
    return data;
  }
}
