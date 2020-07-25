import 'package:flutter/material.dart';
import 'package:youTube_api/services/admobService.dart';
import 'package:youtube_player_flutter/youtube_player_flutter.dart';
import 'package:admob_flutter/admob_flutter.dart';
class VideoScreen extends StatefulWidget {
  final String id;

  VideoScreen({this.id});

  @override
  _VideoScreenState createState() => _VideoScreenState();
}

class _VideoScreenState extends State<VideoScreen> {
  YoutubePlayerController _controller;
final ams=AdMobService();
  @override
  void initState() {
    super.initState();
    Admob.initialize(ams.getAdMobId());
    _controller = YoutubePlayerController(
      initialVideoId: widget.id,
      flags: YoutubePlayerFlags(
        mute: false,
        autoPlay: true,
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
//      appBar: AppBar(),
      body: Column(
        children: <Widget>[
          YoutubePlayer(
            controller: _controller,
            showVideoProgressIndicator: true,
            onReady: () {
              print('Player is ready.');
            },
          ),
        AdmobBanner(adUnitId: ams.getBannerAddId(), adSize: AdmobBannerSize.FULL_BANNER)
        ],
      ),
    );
  }
}
