import 'package:flutter/material.dart';

var myicon = Icon(
  Icons.play_circle_outline,
  size: 40.0,
);

class MyHome extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.deepOrangeAccent,
        leading: myicon,
        title: Text(
          'Media Player',
          style: TextStyle(
            fontSize: 28,
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
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: <Widget>[
            Container(
              height: 186,
            ),
            Container(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: <Widget>[
                  Container(
                      height: 190,
                      width: 390,
                      color: Colors.deepOrangeAccent,
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.start,
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: <Widget>[
                          Container(
                            margin: EdgeInsets.all(12),
                            decoration: BoxDecoration(
                                image: DecorationImage(
                                    fit: BoxFit.cover,
                                    image: NetworkImage(
                                        'https://github.com/MissAgrawal/Flutter_Class/raw/master/audioplayer.png')),
                                borderRadius: BorderRadius.circular(65),
                                border: Border.all(
                                  color: Colors.white,
                                  width: 3,
                                )),
                            height: 120,
                            width: 120,
                          ),
                          Container(
                            padding: EdgeInsets.only(top: 8),
                            height: 70,
                            child: FlatButton(
                              child: Text(
                                "Audio Player",
                                style: TextStyle(
                                    fontSize: 36.5,
                                    color: Colors.white,
                                    fontWeight: FontWeight.bold),
                              ),
                              onPressed: () {
                                Navigator.pushNamed(context, "/audio");
                              },
                            ),
                          ),
                        ],
                      )),
                  Container(
                    height: 100,
                  ),
                  Container(
                      height: 190,
                      width: 390,
                      color: Colors.deepOrangeAccent,
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.start,
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: <Widget>[
                          Container(
                            margin: EdgeInsets.all(12),
                            decoration: BoxDecoration(
                                color: Colors.white,
                                image: DecorationImage(
                                    fit: BoxFit.cover,
                                    image: NetworkImage(
                                        'https://github.com/MissAgrawal/Flutter_Class/raw/master/videoplayer.png')),
                                borderRadius: BorderRadius.circular(65),
                                border: Border.all(
                                  color: Colors.white,
                                  width: 4,
                                )),
                            height: 120,
                            width: 120,
                          ),
                          Container(
                            padding: EdgeInsets.only(top: 8),
                            height: 70,
                            child: FlatButton(
                              child: Text(
                                "Video Player",
                                style: TextStyle(
                                    fontSize: 36.5,
                                    color: Colors.white,
                                    fontWeight: FontWeight.bold),
                              ),
                              onPressed: () {
                                Navigator.pushNamed(context, "/video");
                              },
                            ),
                          )
                        ],
                      )),
                ],
              ),
            ),
            Container(
              height: 186,
            ),
          ],
        ),
      ),
    );
  }
}
