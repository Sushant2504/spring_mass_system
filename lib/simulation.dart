import 'dart:io';

import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';





class Simulation1 extends StatelessWidget{
  @override
  Widget build(BuildContext context){
    return Scaffold(
      appBar: AppBar(
        title: Text('Simulation'),
      ),
      body: SingleChildScrollView(
        child: ElevatedButton(
        onPressed: () async{
              const url = 'https://d2physicspbl.prathamesha.repl.co/';
              await launch(url);
        },
        child: Text('Run Simulation'),
      ),

      ),
    );
  }
}







