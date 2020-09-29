import 'package:comfacundi_app/Views/Partials/comfacundiBase.dart';
import 'package:comfacundi_app/Views/UIs/turism/listOptionsTurism/listOptionsTurism2/detailTurism/detailTurismSettings.dart';
import 'package:comfacundi_app/Views/UIs/turism/listOptionsTurism/listOptionsTurism2/listOptionsTurism2Settings.dart';
import 'package:comfacundi_app/Views/UIs/turism/listOptionsTurism/listOptionsTurismSettings.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class ListOptionTurismPage extends StatelessWidget {
  final ListOptionsTurismSettings settings1;
  final ListOptionsTurismSettings2 settings2;
  ListOptionTurismPage({Key key, this.settings1, this.settings2})
      : super(key: key);

  bool _isSettings1() => (settings1 != null);

  @override
  Widget build(BuildContext context) {
    return Base(
      headerColor: Theme.of(context).primaryColorDark,
      bottomBarColor: Theme.of(context).primaryColorDark,
      title: _isSettings1() ? settings1.subtitle : settings2.subtitle,
      tag: _isSettings1() ? settings1.hero : settings2.hero,
      icon: _isSettings1() ? settings1.icon : settings2.icon,
      child: Padding(
        padding: const EdgeInsets.all(50.0),
        child: Card(
          child: ListView(
            padding: EdgeInsets.zero,
            children: _isSettings1()
                ? settings1.children.map((element) {
                    return _Listitems(
                      function: () {
                        Navigator.pushNamed(context, '/listOptionTurism2',
                            arguments: ListOptionTurism2Settings(
                                icon: element.icon2,
                                title: element.subtitle,
                                hero: element.hero,
                                children: element.children1));
                      },
                      icon: element.icon1,
                      tag: element.hero,
                      title: element.title,
                    );
                  }).toList()
                : settings2.children.map((element) {
                    return _Listitems(
                      function: () {
                        Navigator.pushNamed(context, '/detailTurism',
                            arguments: DetailTurismSettings(
                                hero: element.hero,
                                child: element.data,
                                withTitle: true));
                      },
                      tag: element.hero,
                      icon: element.icon1,
                      title: element.title,
                    );
                  }).toList(),
          ),
        ),
      ),
    );
  }
}

class _Listitems extends StatelessWidget {
  final Function function;
  final String title, tag, icon;

  const _Listitems({Key key, this.function, this.title, this.tag, this.icon})
      : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisSize: MainAxisSize.min,
      children: <Widget>[
        ListTile(
          onTap: function,
          title: Text(
            title.toUpperCase(),
            style: TextStyle(color: Color.fromRGBO(0, 40, 82, 1)),
          ),
          trailing: Container(
            height: 50,
            width: 50,
            child: Hero(
              tag: tag,
              child: SvgPicture.asset(
                icon,
                allowDrawingOutsideViewBox: true,
              ),
            ),
          ),
        ),
        Padding(
          padding: EdgeInsets.symmetric(horizontal: 8.0),
          child: Divider(
            color: Color.fromRGBO(0, 40, 82, .5),
          ),
        ),
      ],
    );
  }
}
