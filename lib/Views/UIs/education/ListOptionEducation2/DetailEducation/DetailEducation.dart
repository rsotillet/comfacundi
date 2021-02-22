import 'package:cache_image/cache_image.dart';
import 'package:comfacundi_app/Config/Urls.dart';
import 'package:comfacundi_app/Views/Partials/comfacundiBase.dart';
import 'package:comfacundi_app/Views/Partials/launchButton.dart';
import 'package:flutter/material.dart';
import 'package:video_player/video_player.dart';

import 'DetailEducationSettings.dart';

class DetailEducation extends StatefulWidget {
  final DetailEducationSettings settings;

  const DetailEducation({Key key, @required this.settings}) : super(key: key);
  @override
  _DetailEducationState createState() => _DetailEducationState();
}

class _DetailEducationState extends State<DetailEducation> {
  VideoPlayerController _controller;
  Future<void> initializeVideoPlayerFuture;

  @override
  void initState() {
    super.initState();
    _controller = VideoPlayerController.asset('assets/videos/banner.mp4');

    _controller.setLooping(true);
    initializeVideoPlayerFuture = _controller.initialize();
    _controller.play();
  }

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Base(
      tag: widget.settings.hero,
      icon: widget.settings.icon,
      bottomBarColor: Theme.of(context).canvasColor,
      headerColor: Theme.of(context).primaryColorDark,
      withSupport: false,
      title: widget.settings.title,
      decorationImage: DecorationImage(
        image: AssetImage(
          'assets/pictures/bg_azul.jpg',
        ),
        fit: BoxFit.cover,
      ),
      child: Column(
        children: <Widget>[
          Expanded(
            child: Center(
              child: Padding(
                padding: const EdgeInsets.only(top: 50.0, right: 50, left: 50),
                child: Container(
                  padding: const EdgeInsets.all(16.0),
                  child: SingleChildScrollView(
                    child: Column(
                      mainAxisSize: MainAxisSize.min,
                      children: <Widget>[
                        if (widget.settings.subtitle != "")
                          Center(
                            child: Container(
                              decoration: BoxDecoration(
                                  border: Border.all(
                                      color: Colors.white, width: 2)),
                              child: Padding(
                                padding: const EdgeInsets.symmetric(
                                    vertical: 5, horizontal: 20),
                                child: Text(
                                  widget.settings.subtitle.toUpperCase(),
                                  textAlign: TextAlign.center,
                                  style: TextStyle(color: Colors.white),
                                ),
                              ),
                            ),
                          ),
                        if (widget.settings.extraImg != "")
                          Center(
                            child: Container(
                              width: 100,
                              height: 50,
                              child: Image(
                                image: CacheImage(
                                    Urls.images + widget.settings.extraImg),
                              ),
                            ),
                          ),
                        if (widget.settings.detail != "")
                          Padding(
                            padding: const EdgeInsets.symmetric(vertical: 20),
                            child: Text(
                              widget.settings.detail,
                              textAlign: TextAlign.center,
                              style: TextStyle(
                                color: Colors.white,
                              ),
                            ),
                          ),
                        if (widget.settings.imgs.length > 0)
                          Row(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: <Widget>[
                              ...widget.settings.imgs.map((element) {
                                return Expanded(
                                  child: Padding(
                                    padding: const EdgeInsets.all(5.0),
                                    child: Column(
                                      mainAxisAlignment:
                                          MainAxisAlignment.start,
                                      children: <Widget>[
                                        Container(
                                          decoration: BoxDecoration(
                                              image: DecorationImage(
                                            image: CacheImage(
                                                Urls.images + element.picture),
                                          )),
                                          height: MediaQuery.of(context)
                                                  .size
                                                  .height *
                                              .12,
                                        ),
                                        Text(element.title,
                                            style: TextStyle(
                                                fontSize: 10,
                                                color: Colors.white,
                                                fontWeight: FontWeight.bold)),
                                        Text(element.detail,
                                            style: TextStyle(
                                                color: Colors.white,
                                                fontSize: 8))
                                      ],
                                    ),
                                  ),
                                );
                              })
                            ],
                          ),
                        if (widget.settings.url != "-")
                          LaunchButton( 
                              text: 'Más Información'.toUpperCase(),
                              url: widget.settings.url),
                        SizedBox(
                          height: 5,
                        ),
                      ],
                    ),
                  ),
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(20),
                    border: Border.all(
                        color: Colors.white.withOpacity(.7), width: 2),
                    color: Theme.of(context).backgroundColor,
                  ),
                ),
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(20),
            child: Container(
              width: MediaQuery.of(context).size.width,
              child: Center(
                child: Container(
                  width: MediaQuery.of(context).size.width - 40.0,
                  height: MediaQuery.of(context).size.height * .2,
                  child: VideoPlayer(_controller),
                ),
              ),
            ),
          )
        ],
      ),
    );
  }
}
