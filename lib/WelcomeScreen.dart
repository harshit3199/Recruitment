import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'LoginScreen.dart';
import 'RoundedButton.dart';
import 'RegistrationScreen.dart';
class WelcomeScreen extends StatefulWidget {
  static String id = 'WelcomeScreen';

  @override
  _WelcomeScreenState createState() => _WelcomeScreenState();
}
class _WelcomeScreenState extends State<WelcomeScreen>{


  @override
  Widget build(BuildContext context) {
    double height = MediaQuery.of(context).size.height;
    double width = MediaQuery.of(context).size.width;
    return Scaffold(
      backgroundColor: Colors.white,

      body: Padding(
        padding:EdgeInsets.symmetric(
            horizontal: MediaQuery.of(context).size.width*0.1
        ),child:Column(
        mainAxisAlignment:  MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: <Widget>[
          Container(
            width: width*0.9,
            height: height*0.4,
            child:Padding(
              padding: EdgeInsets.all(20.0),
              child: Text(
                'Lancelot.com',textAlign: TextAlign.center, style: GoogleFonts.pacifico(
                fontSize: width*0.12, color: Color.fromRGBO(153, 134, 196,1)
              ),
              ),
            ),
            ),
          RoundedButton(
            onPressed:() {Navigator.pushReplacementNamed(context, LoginScreen.id);},
            title: 'Login',
            color: Color.fromRGBO(94, 73, 163, 1),

          ),
          RoundedButton(
            onPressed:(){Navigator.pushReplacementNamed(context, RegistrationScreen.id);},

            title: 'Register',
            color: Color.fromRGBO(94, 73, 163,1),

          ),
        ],
      ),
      ),
    );
  }
}