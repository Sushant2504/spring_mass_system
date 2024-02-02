

import 'package:flutter/material.dart';
import 'package:spring_mass_system/animation.dart';
import 'package:spring_mass_system/simulation.dart';
import 'package:spring_mass_system/application.dart';
import 'package:spring_mass_system/quiz.dart';
import 'package:spring_mass_system/about.dart';


void main() {
  return runApp(
   MaterialApp(
     home: Scaffold(
       body: Homepage(),
     ),
   )
  );
}
class Homepage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      // Display the buttons in your app
      // ...
      home: Scaffold(
        appBar: AppBar(
          title: Text('Oscillations of Spring Mass System'),
          backgroundColor: Colors.red,
        ),
        body: SingleChildScrollView(

          child: spring(),

        ),
        drawer: Drawer(
          child: ListView(
            padding: EdgeInsets.zero,
            children: <Widget>[
              DrawerHeader(
                child: Text('Spring Mass System'),
                decoration: BoxDecoration(
                  color: Colors.blue,
                ),
              ),
              ListTile(
                leading: Icon(
                  Icons.analytics_outlined,
                  color: Colors.yellow,
                ),
                title: Text('Simulation'),
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => Simulation1()),
                  );
                },
              ),
              ListTile(
                leading: Icon(
                  Icons.animation,
                  color: Colors.purple,
                ),
                title: Text('Animation'),
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => VideoApp()),
                  );

                },
              ),
              ListTile(
                leading: Icon(
                  Icons.create,
                  color: Colors.blue,
                ),
                title: Text('Real Life Application'),
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => Application()),
                  );
                },
              ),
              ListTile(
                leading: Icon(
                  Icons.quiz,
                  color: Colors.black,
                ),
                title: Text('Quiz Test'),
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => Quiz()),
                  );
                },
              ),
              ListTile(
                leading: Icon(
                  Icons.person,
                  color: Colors.deepOrange,
                ),
                title: Text('About'),
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => MyApp()),
                  );
                },
              ),
            ],
          ),
        ),
      ),
    );

  }
}
 // );
//}


class spring extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
   return Container(

     child: Text(
       '\n'
       'Oscillation:-  '
        'Oscillation is defined as the process of repeating variations of any quantity or measure about its equilibrium value in time. Oscillation can also be defined as a periodic variation of a matter between two values or about its central value.\n'
        '                                                                                           '
        'Most common examples for oscillation are the tides in the sea and the movement of a simple pendulum in a clock.\n\n'
         'Another example of oscillation is the movement of spring.\n'
     'The vibration of strings in guitar and other string instruments are also examples of oscillations\n\n'
       'A sine wave is a perfect example of oscillation.'
       'Here the wave moves between two points about a central value.\n'
     'The height or the maximum distance that the oscillation takes place is called the amplitude and the time taken to complete one complete cycle is called the time period of the oscillation.\n\n'
     'Frequency is the number of complete cycles that occur in a second. Frequency is the reciprocal of the time period.\n\n'
   '\t                           F = 1 / T\n\n'
       'Where F is the frequency of oscillation'
       ' And T is the time period of the oscillation.\n\n'
       '\t                       T=2π √k/m\n\n'
       '\t                       F = - kx0   \n\n'
       '\t                       f=1/2π √ k/m\n\n'
       'Let, \nwn = angular velocity for natural frequency\n\n'
       'Wd = wn(sqrt(1-zeta²)) = angular velocity for damping frequency\n\n'
       'Damping general equation:–\n\n'
         '\tx(t)  = A0e^(-zeta*wn*t)sin(wd*t-phi0)\n\n'
       '* Oscillation Types:-\n'
       '1)Damped Oscillation:-\n'
       'The oscillation that fades with time is called damped oscillation. Due to damping, the amplitude of oscillation reduces with time. Reduction in amplitude is the result of energy loss from the system in overcoming external forces like friction or air resistance and other resistive forces.\n\n'
       '1) Underdamped Oscillation(zeta < 1):-\n'
       'Where amplitude decreases over time and mass comes to its mean position after certain period is called as underdamped oscillation.\n\n'
         '2) Critically Oscillation(zeta = 1):-\n'
       'Where object comes to mean position as quickly as possible is called as critically damped oscillation.\n\n'
       '3) Overdamped:-\n'
       'When object does not oscillates is called as Overdamped oscillation.\n\n'
           '* Undamped Oscillation:-\n'
       'An undamped oscillation is an oscillation in which, when displaced from its equilibrium point, experiences a restoring force which is proportional to the displacement.\n\n'
       'Applications of Oscillation:-\n'
       '* Application of SHM:-\n'
       'In bungee jumping, there are 2 stages, free fall and after free fall. The simple harmonic motion in a bungee jump happens after free fall and that will be the focus of this page. After free fall, the bungee cord will have been extended to its full length and essentially acts as a spring, pulling the jumper back up, and hence the jumper will obey Hookes law.\n\n'
       '* Clock and Pendulum:-\n'
       'All modern clocks nowadays applies oscillation.  Although the methods they use vary, all oscillating clocks can be divided into analogous parts.\n\n'
       '* Forced oscillation in real life:-\n'
       'If the swing is pushed each time it reaches a certain point it behaves as a forced oscillator and will continue to swing for as long as energy is supplied.\n\n'
       '* Damped oscillation in real life:-\n'
       'In a moving coil galvanometer , damping is due to the induced currents flowing in the metal frame. The opposing couple setting up causes the coil to come to rest quickly.\n\n',

     style: TextStyle(
         fontSize: 20.0,
     ),
     ),

   );
  }
}
