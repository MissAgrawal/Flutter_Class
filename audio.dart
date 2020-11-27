import 'package:audioplayers/audio_cache.dart';
import 'package:flutter/material.dart';
import 'package:audioplayers/audioplayers.dart';

var myarrow = Icon(
  Icons.play_circle_outline,
  size: 40.0,
);

class MyAudio extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    AudioPlayer players = AudioPlayer();
    AudioCache playback = AudioCache(fixedPlayer: players);
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.deepOrangeAccent,
        title: Text(
          'Audio Player',
          style: TextStyle(
            fontSize: 24,
            color: Colors.white,
          ),
        ),
        actions: <Widget>[
          IconButton(
              icon: Icon(Icons.playlist_add),
              onPressed: () {
                print("Clicked on add playlist..");
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
            height: 45,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.start,
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
                      //  Navigator.pushNamed(context, "/audio");
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
                      Navigator.pushNamed(context, "/ONaudio");
                    },
                  ),
                ),
              ],
            ),
          ),
          Container(
            height: 80,
          ),
          Container(
              child: Center(
            child: Container(
              decoration: BoxDecoration(
                  border: Border.all(
                color: Colors.white70,
                width: 4,
              )),
              height: 210,
              child: Image.asset('images/Img1.jpg'),
            ),
          )),
          Container(
            height: 15,
          ),
          Container(
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                Container(
                  height: 50,
                  width: 60,
                  child: Card(
                      color: Colors.deepOrangeAccent,
                      child: IconButton(
                        icon: Icon(
                          Icons.play_arrow,
                          color: Colors.black,
                        ),
                        onPressed: () {
                          print('Playing!!');
                          playback.play('A.mp3');
                        },
                      )),
                ),
                Container(
                  padding: EdgeInsets.only(left: 40),
                  height: 50,
                  width: 100,
                  child: Card(
                    color: Colors.deepOrangeAccent,
                    child: IconButton(
                      icon: Icon(
                        Icons.pause,
                        color: Colors.black,
                      ),
                      onPressed: () {
                        print('Paused!!');
                        players.pause();
                      },
                    ),
                  ),
                ),
                Container(
                  padding: EdgeInsets.only(left: 40),
                  height: 50,
                  width: 100,
                  child: Card(
                    color: Colors.deepOrangeAccent,
                    child: IconButton(
                      icon: Icon(
                        Icons.stop,
                        color: Colors.black,
                      ),
                      onPressed: () {
                        print('Stopped!!');
                        players.stop();
                      },
                    ),
                  ),
                ),
              ],
            ),
          ),
          Container(
            height: 80,
          ),
          Container(
              child: Center(
            child: Container(
              decoration: BoxDecoration(
                  border: Border.all(
                color: Colors.white70,
                width: 4,
              )),
              height: 210,
              child: Image.asset('images/Img2.jpg'),
            ),
          )),
          Container(
            height: 15,
          ),
          Container(
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                Container(
                  height: 50,
                  width: 60,
                  child: Card(
                    color: Colors.deepOrangeAccent,
                    child: IconButton(
                      icon: Icon(
                        Icons.play_arrow,
                        color: Colors.black,
                      ),
                      onPressed: () {
                        print('Playing!!');
                        playback.play('B.mp3');
                      },
                    ),
                  ),
                ),
                Container(
                  padding: EdgeInsets.only(left: 40),
                  height: 50,
                  width: 100,
                  child: Card(
                    color: Colors.deepOrangeAccent,
                    child: IconButton(
                      icon: Icon(
                        Icons.pause,
                        color: Colors.black,
                      ),
                      onPressed: () {
                        print('Paused!!');
                        players.pause();
                      },
                    ),
                  ),
                ),
                Container(
                  padding: EdgeInsets.only(left: 40),
                  height: 50,
                  width: 100,
                  child: Card(
                    color: Colors.deepOrangeAccent,
                    child: IconButton(
                      icon: Icon(
                        Icons.stop,
                        color: Colors.black,
                      ),
                      onPressed: () {
                        print('Stopped!!');
                        players.stop();
                      },
                    ),
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
