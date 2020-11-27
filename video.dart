import 'package:flutter/material.dart';
import 'package:video_player/video_player.dart';

class MyVideo extends StatefulWidget {
  MyVideo() : super();

  final String title = "Video Player";

  @override
  VideoState createState() => VideoState();
}

class VideoState extends State<MyVideo> {
  VideoPlayerController _controller;
  Future<void> _initializeVideoPlayerFuture;

  @override
  void initState() {
    _controller = VideoPlayerController.asset("assets/MereSohneya.mp4");

    _initializeVideoPlayerFuture = _controller.initialize();
    _controller.setLooping(true);
    _controller.setVolume(1.0);
    super.initState();
  }

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.deepOrangeAccent,
        title: Text(
          "Video Player",
          style: TextStyle(
            fontSize: 24,
            color: Colors.white,
          ),
        ),
        actions: <Widget>[
          IconButton(
              icon: Icon(Icons.ondemand_video),
              onPressed: () {
                print("Clicked on ondemand video..");
              }),
          IconButton(
            icon: Icon(Icons.settings),
            onPressed: () => {
              print("Pressed Setting"),
            },
          ),
        ],
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        children: <Widget>[
          Container(
            height: 48,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: <Widget>[
                Container(
                  width: 211,
                  child: FlatButton(
                    child: Text(
                      "Offline",
                      style: TextStyle(
                        fontSize: 20,
                        color: Colors.white,
                      ),
                    ),
                    onPressed: () {
                      Navigator.pushNamed(context, "/video");
                    },
                  ),
                ),
                Container(
                  color: Colors.deepOrangeAccent,
                  width: 212,
                  child: FlatButton(
                    child: Text(
                      "Online",
                      style: TextStyle(
                        fontSize: 20,
                        color: Colors.white,
                      ),
                    ),
                    onPressed: () {
                      Navigator.pushNamed(context, "/ONvideo");
                    },
                  ),
                ),
              ],
            ),
          ),
          Container(
            height: 150,
          ),
          Container(
            padding: EdgeInsets.only(bottom: 22),
            child: Text(
              "Darshan Raval - Mere Sohneya",
              style: TextStyle(
                fontSize: 18,
                color: Colors.white,
              ),
            ),
          ),
          Container(
              child: Center(
            child: Container(
              decoration: BoxDecoration(
                  border: Border.all(
                color: Colors.white54,
                width: 4,
              )),
              height: 220,
              child: FutureBuilder(
                future: _initializeVideoPlayerFuture,
                builder: (context, snapshot) {
                  if (snapshot.connectionState == ConnectionState.done) {
                    return AspectRatio(
                      aspectRatio: _controller.value.aspectRatio,
                      child: VideoPlayer(_controller),
                    );
                  }
                },
              ),
            ),
          )),
          Container(
            height: 24,
          ),
          Container(
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                Container(
                  height: 50,
                  width: 80,
                  child: Card(
                      color: Colors.deepOrangeAccent,
                      child: IconButton(
                        icon: Icon(
                          Icons.play_arrow,
                          color: Colors.black,
                        ),
                        onPressed: () {
                          print('Playing!!');
                          _controller.play();
                        },
                      )),
                ),
                Container(
                  padding: EdgeInsets.only(left: 40),
                  height: 50,
                  width: 120,
                  child: Card(
                    color: Colors.deepOrangeAccent,
                    child: IconButton(
                      icon: Icon(
                        Icons.pause,
                        color: Colors.black,
                      ),
                      onPressed: () {
                        print('Paused!!');
                        _controller.pause();
                      },
                    ),
                  ),
                ),
                Container(
                  padding: EdgeInsets.only(left: 40),
                  height: 50,
                  width: 120,
                  child: Card(
                      color: Colors.deepOrangeAccent,
                      child: IconButton(
                        icon: Icon(
                          Icons.stop,
                          color: Colors.black,
                        ),
                        onPressed: () {
                          print('Stopped!!');
                          _controller.seekTo(Duration(seconds: 0));
                          _controller.pause();
                        },
                      )),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
