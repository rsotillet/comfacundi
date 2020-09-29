class Education {
  List<Items> items;

  Education({this.items});

  Education.fromJson(Map<String, dynamic> json) {
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
  List<Children> children;

  Items({this.title, this.subtitle, this.icon, this.tag, this.children});

  Items.fromJson(Map<String, dynamic> json) {
    title = json['title'];
    subtitle = json['subtitle'];
    icon = json['icon'];
    tag = json['tag'];
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
    if (this.children != null) {
      data['children'] = this.children.map((v) => v.toJson()).toList();
    }
    return data;
  }
}

class Children {
  String title;
  List<Child> child;

  Children({this.title, this.child});

  Children.fromJson(Map<String, dynamic> json) {
    title = json['title'];
    if (json['child'] != null) {
      child = new List<Child>();
      json['child'].forEach((v) {
        child.add(new Child.fromJson(v));
      });
    }
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['title'] = this.title;
    if (this.child != null) {
      data['child'] = this.child.map((v) => v.toJson()).toList();
    }
    return data;
  }
}

class Child {
  String title;
  List<Item> item;

  Child({this.title, this.item});

  Child.fromJson(Map<String, dynamic> json) {
    title = json['title'];
    if (json['item'] != null) {
      item = new List<Item>();
      json['item'].forEach((v) {
        item.add(new Item.fromJson(v));
      });
    }
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['title'] = this.title;
    if (this.item != null) {
      data['item'] = this.item.map((v) => v.toJson()).toList();
    }
    return data;
  }
}

class Item {
  String title;
  String subtitle;
  String detail;
  String url;
  String extraimg;
  List<Imgs> imgs;

  Item(
      {this.title,
      this.subtitle,
      this.detail,
      this.url,
      this.extraimg,
      this.imgs});

  Item.fromJson(Map<String, dynamic> json) {
    title = json['title'];
    subtitle = json['subtitle'];
    detail = json['detail'];
    url = json['url'];
    extraimg = json['extraimg'];
    if (json['imgs'] != null) {
      imgs = new List<Imgs>();
      json['imgs'].forEach((v) {
        imgs.add(new Imgs.fromJson(v));
      });
    }
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['title'] = this.title;
    data['subtitle'] = this.subtitle;
    data['detail'] = this.detail;
    data['url'] = this.url;
    data['extraimg'] = this.extraimg;
    if (this.imgs != null) {
      data['imgs'] = this.imgs.map((v) => v.toJson()).toList();
    }
    return data;
  }
}

class Imgs {
  String picture;
  String title;
  String detail;

  Imgs({this.picture, this.title, this.detail});

  Imgs.fromJson(Map<String, dynamic> json) {
    picture = json['picture'];
    title = json['title'];
    detail = json['detail'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['picture'] = this.picture;
    data['title'] = this.title;
    data['detail'] = this.detail;
    return data;
  }
}
