import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

class LaunchButton extends StatelessWidget {
  final String text;
  final String url;

  const LaunchButton({Key key, @required this.text, @required this.url})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Material(
      //Wrap with Material
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.all(Radius.circular(100)),
      ),
      elevation: 0,
      color: Colors.transparent,
      clipBehavior: Clip.antiAlias,
      // Add This
      child: MaterialButton(
        height: 50,
        color: Theme.of(context).buttonColor,
        splashColor: Colors.white,
        child: Container(
          child: Text(
            text,
            textAlign: TextAlign.center,
            style: TextStyle(fontSize: 20.0, color: Colors.white),
          ),
        ),
        onPressed: () async {
          if (await canLaunch(url)) {
            await launch(url);
          } else {
            print('Could not launch $url');
          }
        },
      ),
    );
  }
}
