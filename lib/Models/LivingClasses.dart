class Living {
  List<Items> items;

  Living({this.items});

  Living.fromJson(Map<String, dynamic> json) {
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
  List<Children> children;

  Items({this.title, this.children});

  Items.fromJson(Map<String, dynamic> json) {
    title = json['title'];
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
  String direction;
  String price;
  String url;
  String txtButton;
  String img;

  Children(
      {this.title,
      this.subtitle,
      this.description,
      this.direction,
      this.price,
      this.url,
      this.txtButton,
      this.img});

  Children.fromJson(Map<String, dynamic> json) {
    title = json['title'];
    subtitle = json['subtitle'];
    description = json['description'];
    direction = json['direction'];
    price = json['price'];
    url = json['url'];
    txtButton = json['txtButton'];
    img = json['img'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['title'] = this.title;
    data['subtitle'] = this.subtitle;
    data['description'] = this.description;
    data['direction'] = this.direction;
    data['price'] = this.price;
    data['url'] = this.url;
    data['txtButton'] = this.txtButton;
    data['img'] = this.img;
    return data;
  }
}
