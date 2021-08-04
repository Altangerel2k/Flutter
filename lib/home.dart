import 'package:flutter/material.dart';
import 'package:demo_flutter/story.dart';
import 'package:demo_flutter/play.dart';

class MyHomePage extends StatefulWidget {
  MyHomePage({Key key, this.title}) : super(key: key);

  final String title;

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  final _stories = initializeStories();

  Widget _buildRow(Story story) {
    return ListTile(
      title: Text(story.name),
      onTap: () {
        Navigator.push(
          context,
          MaterialPageRoute(builder: (context) => NowPlayingPage(story: story)),
        );
      },
    );
  }

  Widget _buildStories() {
    return ListView.builder(
        padding: const EdgeInsets.all(16.0),
        itemCount: _stories.length,
        itemBuilder: (context, i) {
          return _buildRow(_stories[i]);
        });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Үлгэр'),
      ),
      body: _buildStories(),
    );
  }
}
