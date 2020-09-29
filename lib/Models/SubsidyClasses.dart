class Subsidy {
  List<Items> items;

  Subsidy({this.items});

  Subsidy.fromJson(Map<String, dynamic> json) {
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
  bool withBg;
  String detail;
  String tag;
  String url;
  List<Children> children;

  Items(
      {this.title,
      this.subtitle,
      this.icon,
      this.withBg,
      this.detail,
      this.tag,
      this.url,
      this.children});

  Items.fromJson(Map<String, dynamic> json) {
    title = json['title'];
    subtitle = json['subtitle'];
    icon = json['icon'];
    withBg = json['withBg'];
    detail = json['detail'];
    tag = json['tag'];
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
    data['withBg'] = this.withBg;
    data['detail'] = this.detail;
    data['tag'] = this.tag;
    data['url'] = this.url;
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
  String subtitle;
  String detail;
  String detail2;
  bool withBg;
  String url;
  List<String> imgs;
  List<Table1> table1;
  List<Table2> table2;

  Child(
      {this.title,
      this.subtitle,
      this.detail,
      this.detail2,
      this.withBg,
      this.url,
      this.imgs,
      this.table1,
      this.table2});

  Child.fromJson(Map<String, dynamic> json) {
    title = json['title'];
    subtitle = json['subtitle'];
    detail = json['detail'];
    detail2 = json['detail2'];
    withBg = json['withBg'];
    url = json['url'];
    imgs = json['imgs'].cast<String>();
    if (json['table1'] != null) {
      table1 = new List<Table1>();
      json['table1'].forEach((v) {
        table1.add(new Table1.fromJson(v));
      });
    }
    if (json['table2'] != null) {
      table2 = new List<Table2>();
      json['table2'].forEach((v) {
        table2.add(new Table2.fromJson(v));
      });
    }
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['title'] = this.title;
    data['subtitle'] = this.subtitle;
    data['detail'] = this.detail;
    data['detail2'] = this.detail2;
    data['withBg'] = this.withBg;
    data['url'] = this.url;
    data['imgs'] = this.imgs;
    if (this.table1 != null) {
      data['table1'] = this.table1.map((v) => v.toJson()).toList();
    }
    if (this.table2 != null) {
      data['table2'] = this.table2.map((v) => v.toJson()).toList();
    }
    return data;
  }
}

class Table1 {
  List<String> ene;
  List<String> feb;
  List<String> mar;
  List<String> abr;
  List<String> may;
  List<String> jun;
  List<String> jul;
  List<String> ago;
  List<String> sep;
  List<String> oct;
  List<String> nov;
  List<String> dic;

  Table1(
      {this.ene,
      this.feb,
      this.mar,
      this.abr,
      this.may,
      this.jun,
      this.jul,
      this.ago,
      this.sep,
      this.oct,
      this.nov,
      this.dic});

  Table1.fromJson(Map<String, dynamic> json) {
    ene = json['ene'].cast<String>();
    feb = json['feb'].cast<String>();
    mar = json['mar'].cast<String>();
    abr = json['abr'].cast<String>();
    may = json['may'].cast<String>();
    jun = json['jun'].cast<String>();
    jul = json['jul'].cast<String>();
    ago = json['ago'].cast<String>();
    sep = json['sep'].cast<String>();
    oct = json['oct'].cast<String>();
    nov = json['nov'].cast<String>();
    dic = json['dic'].cast<String>();
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['ene'] = this.ene;
    data['feb'] = this.feb;
    data['mar'] = this.mar;
    data['abr'] = this.abr;
    data['may'] = this.may;
    data['jun'] = this.jun;
    data['jul'] = this.jul;
    data['ago'] = this.ago;
    data['sep'] = this.sep;
    data['oct'] = this.oct;
    data['nov'] = this.nov;
    data['dic'] = this.dic;
    return data;
  }
}

class Table2 {
  String title;
  List<String> details;

  Table2({this.title, this.details});

  Table2.fromJson(Map<String, dynamic> json) {
    title = json['title'];
    details = json['details'].cast<String>();
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['title'] = this.title;
    data['details'] = this.details;
    return data;
  }
}