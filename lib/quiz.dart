

import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';





class Quiz extends StatelessWidget{
  @override
  Widget build(BuildContext context){
    return Scaffold(
      appBar: AppBar(
        title: Text('Quiz'),
      ),
      body: SingleChildScrollView(
        child: ElevatedButton(
          onPressed: () async{
            const url = 'https://take.quiz-maker.com/QLDVMYO7J';
            await launch(url);
          },
          child: Text('Take Quiz'),
        ),

      ),
    );
  }
}