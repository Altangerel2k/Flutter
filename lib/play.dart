import 'package:flutter/material.dart';
import 'package:assets_audio_player/assets_audio_player.dart';

import 'package:demo_flutter/story.dart';

class NowPlayingPage extends StatelessWidget {
  final Story story;

  NowPlayingPage({Key key, @required this.story}) : super(key: key);

  final assetsAudioPlayer = AssetsAudioPlayer();

  void _playStory() {
    assetsAudioPlayer.open(Audio(story.fileName));
  }

  void _stopStory() {
    assetsAudioPlayer.pause();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Text(story.name),
            Padding(
              padding: EdgeInsets.all(16.0),
            ),
            FlatButton(
              onPressed: _playStory,
              color: Colors.green,
              padding: EdgeInsets.all(10.0),
              child: Column(
                children: <Widget>[Icon(Icons.play_arrow), Text('Play')],
              ),
            ),
            Padding(
              padding: EdgeInsets.all(8.0),
            ),
            FlatButton(
              onPressed: _stopStory,
              color: Colors.red,
              padding: EdgeInsets.all(10.0),
              child: Column(
                children: <Widget>[Icon(Icons.pause), Text('Stop')],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
