import 'package:comfacundi_app/Views/Partials/comfacundiBase.dart';
import 'package:comfacundi_app/Views/UIs/education/ListOptionEducation2/DetailEducation/DetailEducationSettings.dart';
import 'package:comfacundi_app/Views/UIs/education/ListOptionEducation2/ListOptionEducation2Settings.dart';
import 'package:flutter/material.dart';

class ListOptionEducation2Page extends StatelessWidget {
  ListOptionEducation2Page({Key key, this.settings}) : super(key: key);
  final ListOptionEducation2Settings settings;

  @override
  Widget build(BuildContext context) {
    return Base(
      title: settings.title,
      icon: settings.icon,
      tag: settings.hero,
      headerColor: Theme.of(context).primaryColor,
      bottomBarColor: Theme.of(context).primaryColorDark,
      child: Padding(
        padding: const EdgeInsets.all(50.0),
        child: Card(
            child: Column(
          children: <Widget>[
            Expanded(
              child: ListView(
                padding: EdgeInsets.zero,
                children: settings.children.map((element) {
                  if (element.child.length > 1) {
                    return Column(
                      mainAxisSize: MainAxisSize.min,
                      children: <Widget>[
                        ExpansionTile(
                          children: element.child.map((el) {
                            if (el.item.length > 1) {
                              return ExpansionTile(
                                  children: el.item.map((ele) {
                                    return ListTile(
                                      onTap: () {
                                        Navigator.pushNamed(
                                            context, '/detailEducation',
                                            arguments: DetailEducationSettings(
                                                detail: ele.detail,
                                                subtitle: ele.title,
                                                extraImg: ele.extraimg,
                                                title: ele.subtitle,
                                                imgs: ele.imgs,
                                                url: ele.url,
                                                hero: settings.hero,
                                                icon: settings.icon));
                                      },
                                      title: Text(
                                        ele.title,
                                        style: TextStyle(
                                            color: Theme.of(context)
                                                .primaryColorDark,
                                            fontSize: 12,
                                            fontStyle: FontStyle.italic),
                                      ),
                                      trailing: Icon(
                                        Icons.keyboard_arrow_right,
                                      ),
                                    );
                                  }).toList(),
                                  title: Text(element.title.toUpperCase(),
                                      style: TextStyle(
                                        color:
                                            Theme.of(context).primaryColorDark,
                                        fontStyle: FontStyle.italic,
                                      )));
                            } else {
                              return ListTile(
                                onTap: () {
                                  Navigator.pushNamed(
                                      context, '/detailEducation',
                                      arguments: DetailEducationSettings(
                                          detail: el.item.elementAt(0).detail,
                                          extraImg:
                                              el.item.elementAt(0).extraimg,
                                          imgs: el.item.elementAt(0).imgs,
                                          subtitle:
                                              el.item.elementAt(0).subtitle,
                                          title: el.item.elementAt(0).title,
                                          url: el.item.elementAt(0).url,
                                          hero: settings.hero,
                                          icon: settings.icon));
                                },
                                title: Text(
                                  el.title,
                                  style: TextStyle(
                                      color: Theme.of(context).primaryColorDark,
                                      fontStyle: FontStyle.italic),
                                ),
                                trailing: Icon(
                                  Icons.keyboard_arrow_right,
                                ),
                              );
                            }
                          }).toList(),
                          title: Text(
                            element.title.toUpperCase(),
                            style: TextStyle(
                              color: Theme.of(context).primaryColorDark,
                            ),
                          ),
                        ),
                        Padding(
                          padding: EdgeInsets.symmetric(horizontal: 8.0),
                          child: Divider(
                            color: Theme.of(context).canvasColor,
                          ),
                        ),
                      ],
                    );
                  } else if (element.child.length == 1) {
                    return Column(
                      mainAxisSize: MainAxisSize.min,
                      children: <Widget>[
                        ListTile(
                          onTap: () {
                            Navigator.pushNamed(context, '/detailEducation',
                                arguments: DetailEducationSettings(
                                    detail: element.child
                                        .elementAt(0)
                                        .item
                                        .elementAt(0)
                                        .detail,
                                    extraImg: element.child
                                        .elementAt(0)
                                        .item
                                        .elementAt(0)
                                        .extraimg,
                                    imgs: element.child
                                        .elementAt(0)
                                        .item
                                        .elementAt(0)
                                        .imgs,
                                    subtitle: element.child
                                        .elementAt(0)
                                        .item
                                        .elementAt(0)
                                        .subtitle,
                                    title: element.child
                                        .elementAt(0)
                                        .item
                                        .elementAt(0)
                                        .title,
                                    url: element.child
                                        .elementAt(0)
                                        .item
                                        .elementAt(0)
                                        .url,
                                    hero: settings.hero,
                                    icon: settings.icon));
                          },
                          title: Text(
                            element.title.toUpperCase(),
                            style: TextStyle(
                              color: Theme.of(context).primaryColorDark,
                            ),
                          ),
                          trailing: Icon(Icons.keyboard_arrow_right),
                        ),
                        Padding(
                          padding: EdgeInsets.symmetric(horizontal: 8.0),
                          child: Divider(
                            color: Theme.of(context).canvasColor,
                          ),
                        ),
                      ],
                    );
                  } else {
                    return Container();
                  }
                }).toList(),
              ),
            )
          ],
        )),
      ),
    );
  }
}
