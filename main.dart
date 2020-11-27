import 'package:app1/ONaudio.dart';
import 'package:flutter/material.dart';

import 'package:app1/home.dart';
import 'package:app1/audio.dart';
import 'package:app1/video.dart';
import 'package:app1/ONaudio.dart';
import 'package:app1/ONvideo.dart';

void main() {
  runApp(
    MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        brightness: Brightness.dark,
      ),
      initialRoute: "/",
      routes: {
        "/": (context) => MyHome(),
        "/audio": (context) => MyAudio(),
        "/video": (context) => MyVideo(),
        "/ONaudio": (context) => MyONaudio(),
        "/ONvideo": (context) => MyONvideo(),
      },
    ),
  );
}
