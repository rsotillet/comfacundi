class Turism {
  AgencyData agencyData;
  HotelData hotelData;

  Turism({this.agencyData, this.hotelData});

  Turism.fromJson(Map<String, dynamic> json) {
    agencyData = json['agencyData'] != null
        ? new AgencyData.fromJson(json['agencyData'])
        : null;
    hotelData = json['hotelData'] != null
        ? new HotelData.fromJson(json['hotelData'])
        : null;
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    if (this.agencyData != null) {
      data['agencyData'] = this.agencyData.toJson();
    }
    if (this.hotelData != null) {
      data['hotelData'] = this.hotelData.toJson();
    }
    return data;
  }
}

class AgencyData {
  String icon;
  String name;
  String hero;
  String subtitle;
  String image;
  double aligment1;
  double aligment2;
  List<Children> children;

  AgencyData(
      {this.icon,
      this.name,
      this.hero,
      this.subtitle,
      this.image,
      this.aligment1,
      this.aligment2,
      this.children});

  AgencyData.fromJson(Map<String, dynamic> json) {
    icon = json['icon'];
    name = json['name'];
    hero = json['hero'];
    subtitle = json['subtitle'];
    image = json['image'];
    aligment1 = json['aligment1'];
    aligment2 = json['aligment2'];
    if (json['children'] != null) {
      children = new List<Children>();
      json['children'].forEach((v) {
        children.add(new Children.fromJson(v));
      });
    }
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['icon'] = this.icon;
    data['name'] = this.name;
    data['hero'] = this.hero;
    data['subtitle'] = this.subtitle;
    data['image'] = this.image;
    data['aligment1'] = this.aligment1;
    data['aligment2'] = this.aligment2;
    if (this.children != null) {
      data['children'] = this.children.map((v) => v.toJson()).toList();
    }
    return data;
  }
}

class Children {
  String title;
  String subtitle;
  String icon1;
  String icon2;
  String hero;
  List<Children1> children1;

  Children(
      {this.title,
      this.subtitle,
      this.icon1,
      this.icon2,
      this.hero,
      this.children1});

  Children.fromJson(Map<String, dynamic> json) {
    title = json['title'];
    subtitle = json['subtitle'];
    icon1 = json['icon1'];
    icon2 = json['icon2'];
    hero = json['hero'];
    if (json['children1'] != null) {
      children1 = new List<Children1>();
      json['children1'].forEach((v) {
        children1.add(new Children1.fromJson(v));
      });
    }
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['title'] = this.title;
    data['subtitle'] = this.subtitle;
    data['icon1'] = this.icon1;
    data['icon2'] = this.icon2;
    data['hero'] = this.hero;
    if (this.children1 != null) {
      data['children1'] = this.children1.map((v) => v.toJson()).toList();
    }
    return data;
  }
}

class Children1 {
  String title;
  List<Child> child;

  Children1({this.title, this.child});

  Children1.fromJson(Map<String, dynamic> json) {
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
  String subtitle;
  String icon;
  String background;
  String text1;
  Price price;
  AreaButton areaButton;

  Child(
      {this.title,
      this.subtitle,
      this.icon,
      this.background,
      this.text1,
      this.price,
      this.areaButton});

  Child.fromJson(Map<String, dynamic> json) {
    title = json['title'];
    subtitle = json['subtitle'];
    icon = json['Icon'];
    background = json['background'];
    text1 = json['text1'];
    price = json['price'] != null ? new Price.fromJson(json['price']) : null;
    areaButton = json['areaButton'] != null
        ? new AreaButton.fromJson(json['areaButton'])
        : null;
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['title'] = this.title;
    data['subtitle'] = this.subtitle;
    data['Icon'] = this.icon;
    data['background'] = this.background;
    data['text1'] = this.text1;
    if (this.price != null) {
      data['price'] = this.price.toJson();
    }
    if (this.areaButton != null) {
      data['areaButton'] = this.areaButton.toJson();
    }
    return data;
  }
}

class Price {
  String text1;
  String price;
  String text2;

  Price({this.text1, this.price, this.text2});

  Price.fromJson(Map<String, dynamic> json) {
    text1 = json['text1'];
    price = json['price'];
    text2 = json['text2'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['text1'] = this.text1;
    data['price'] = this.price;
    data['text2'] = this.text2;
    return data;
  }
}

class AreaButton {
  String txt1;
  String txtButton;
  String txt2;
  String url;

  AreaButton({this.txt1, this.txtButton, this.txt2, this.url});

  AreaButton.fromJson(Map<String, dynamic> json) {
    txt1 = json['txt1'];
    txtButton = json['txtButton'];
    txt2 = json['txt2'];
    url = json['url'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['txt1'] = this.txt1;
    data['txtButton'] = this.txtButton;
    data['txt2'] = this.txt2;
    data['url'] = this.url;
    return data;
  }
}

class HotelData {
  String icon;
  String name;
  String hero;
  String image;
  String subtitle;
  double aligment1;
  double aligment2;
  List<Hotels> hotels;

  HotelData(
      {this.icon,
      this.name,
      this.hero,
      this.image,
      this.subtitle,
      this.aligment1,
      this.aligment2,
      this.hotels});

  HotelData.fromJson(Map<String, dynamic> json) {
    icon = json['icon'];
    name = json['name'];
    hero = json['hero'];
    image = json['image'];
    subtitle = json['subtitle'];
    aligment1 = json['aligment1'];
    aligment2 = json['aligment2'];
    if (json['hotels'] != null) {
      hotels = new List<Hotels>();
      json['hotels'].forEach((v) {
        hotels.add(new Hotels.fromJson(v));
      });
    }
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['icon'] = this.icon;
    data['name'] = this.name;
    data['hero'] = this.hero;
    data['image'] = this.image;
    data['subtitle'] = this.subtitle;
    data['aligment1'] = this.aligment1;
    data['aligment2'] = this.aligment2;
    if (this.hotels != null) {
      data['hotels'] = this.hotels.map((v) => v.toJson()).toList();
    }
    return data;
  }
}

class Hotels {
  String title;
  String icon1;
  String icon2;
  String hero;
  Child data;

  Hotels({this.title, this.icon1, this.icon2, this.hero, this.data});

  Hotels.fromJson(Map<String, dynamic> json) {
    title = json['title'];
    icon1 = json['icon1'];
    icon2 = json['icon2'];
    hero = json['hero'];
    data = json['data'] != null ? new Child.fromJson(json['data']) : null;
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['title'] = this.title;
    data['icon1'] = this.icon1;
    data['icon2'] = this.icon2;
    data['hero'] = this.hero;
    if (this.data != null) {
      data['data'] = this.data.toJson();
    }
    return data;
  }
}