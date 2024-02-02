


import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';





class Application extends StatelessWidget{
  @override
  Widget build(BuildContext context){
    return Scaffold(
      appBar: AppBar(
        title: Text('Real Life Application'),
      ),
      body: SingleChildScrollView(
        child: ElevatedButton(
          onPressed: () async{
            const url = 'https://1drv.ms/x/s!Ag7h6tNqM-b4g3y_T23jgjtwG2uZ';
            await launch(url);
          },
          child: Text('See The Applications'),
        ),

      ),
    );
  }
}