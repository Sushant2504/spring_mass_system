import 'package:flutter/material.dart';



class MyApp extends StatelessWidget {
  @override
  Widget build (BuildContext Context){
    return MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.teal,
        body: SafeArea(
          child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                CircleAvatar(
                  radius: 80.0,
                  backgroundImage: AssetImage('images/sushant.jpg'),
                ),
                Text(
                  'Sushant Nadavade',
                  style: TextStyle(
                    fontFamily: 'Pacifico',
                    fontSize: 40.0,
                    color: Colors.white,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                Text(
                  'FY (B.Tech) Student',
                  style: TextStyle(
                    fontFamily: 'Roboto',
                    fontSize: 20.0,
                    color: Colors.teal[50],
                    letterSpacing: 2.5,
                    fontWeight: FontWeight.bold,
                  ),

                ),
                SizedBox(
                  height: 20.0,
                  width: 150.0,
                  child: Divider(
                    color: Colors.teal.shade100,
                  ),
                ),


                Card(
                  color: Colors.white,
                  margin: EdgeInsets.symmetric(vertical: 10.0,horizontal: 25.0),
                  child: ListTile(
                    leading: Icon(
                      Icons.phone,
                      size: 48.0,
                      color: Colors.teal,
                    ),
                    title: Text(
                      '+91 78219 76134',
                      style: TextStyle(
                        color: Colors.teal,
                        fontFamily: 'Roboto',

                      ),
                    ),

                  ),
                ),

                Card(
                  color: Colors.white,
                  margin: EdgeInsets.symmetric(vertical: 10.0,horizontal: 25.0),
                  child: ListTile(
                    leading: Icon(
                      Icons.email,
                      size: 48.0,
                      color: Colors.teal,
                    ),
                    title: Text(
                      'sushantnadavade006@gmail.com',
                      style: TextStyle(
                        color: Colors.teal,
                        fontFamily: 'Roboto',

                      ),
                    ),
                  ),
                ),

                Card(
                  color: Colors.white,
                  margin: EdgeInsets.symmetric(vertical: 10.0,horizontal: 25.0),
                  child: ListTile(
                    leading: Icon(
                      Icons.info,
                      size: 48.0,
                      color: Colors.teal,
                    ),
                    title: Text(
                      'This Applicatication is mainly build for students to understand the concept of Damping and Vibration effectively by using Animation and Simulation.',
                      style: TextStyle(
                        color: Colors.teal,
                        fontFamily: 'Roboto',

                      ),
                    ),

                  ),
                ),

              ]
          ),
        ),
      ),
    );
  }
}