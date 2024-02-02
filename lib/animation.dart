import 'package:flutter/material.dart';
import 'package:video_player/video_player.dart';
import 'package:url_launcher/url_launcher.dart';




class VideoApp extends StatelessWidget{
  @override
  Widget build(BuildContext context){
    return Scaffold(
      appBar: AppBar(
        title: Text('Animation'),
      ),
      body: SingleChildScrollView(
        child: ElevatedButton(
          onPressed: () async{
            const url = 'https://youtu.be/vLaFAKnaRJU';
            await launch(url);
          },
          child: Text('Run Animation'),
        ),

      ),
    );
  }
}