import 'dart:math';

import 'package:comfacundi_app/Views/Partials/rotateBackGround.dart';
import 'package:flutter/material.dart';
import 'package:flutter_circular_text/circular_text.dart';
import 'package:flutter_svg/svg.dart';

class PersonalButton extends StatelessWidget {
  final String svgImage;
  final String title;
  final Function onPressed;
  final String tag;

  const PersonalButton(
      {Key key, this.svgImage, this.title, this.onPressed, this.tag})
      : super(key: key);
  @override
  Widget build(BuildContext context) {
    return FlatButton(
        onPressed: onPressed,
        padding: EdgeInsets.zero,
        child: Hero(
          tag: tag,
          child: Stack(
            alignment: Alignment(0, 0),
            children: <Widget>[
              Container(
                width: 90,
                height: 90,
                child: ImageRotate(),
              ),
              Container(
                width: 45,
                height: 45,
                child: SvgPicture.asset(
                  svgImage,
                  allowDrawingOutsideViewBox: true,
                ),
              ),
              Container(
                width: 120,
                height: 120,
                child: CircularText(
                  children: [
                    TextItem(
                      text: Text(
                        title,
                        style: TextStyle(
                          fontSize: 10,
                          color: Theme.of(context).primaryColorDark,
                        ),
                      ),
                      space: 10,
                      startAngle: -89,
                      startAngleAlignment: StartAngleAlignment.center,
                      direction: CircularTextDirection.clockwise,
                    ),
                  ],
                  radius: 60,
                  position: CircularTextPosition.inside,
                ),
              ),
            ],
          ),
        ));
  }
}

class ValleyQuadraticCurve extends Curve {
  @override
  double transform(double t) {
    assert(t >= 0.0 && t <= 1.0);
    return 4 * pow(t - 0.5, 2);
  }
}
