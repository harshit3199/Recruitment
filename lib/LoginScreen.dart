import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:google_fonts/google_fonts.dart';
import 'Dashboard.dart';
import 'RegistrationScreen.dart';
import 'RoundedButton.dart';
class LoginScreen extends StatefulWidget {
  static String id = 'login_screen';

  @override
  _LoginScreenState createState() => _LoginScreenState();
}
class _LoginScreenState extends State<LoginScreen>{
  String email;
  String password;
  @override
  Widget build(BuildContext context) {
    double height = MediaQuery.of(context).size.height;
    double width = MediaQuery.of(context).size.width;
    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: <Widget>[
              Container(
                width: width*0.8,
                alignment: Alignment.center,
              child: Padding(
                padding:EdgeInsets.all(height*0.04),
                child: Text(
                  'Login', textAlign: TextAlign.center,
                  style:GoogleFonts.roboto(
                    letterSpacing: 1.7,
                    fontSize: height*0.07,
                    color: Color.fromRGBO(153, 134, 196,1),
                  ),
                ),
              ),
              ),
              Container(
                width: width*0.8,
                child: Padding(
                  padding: EdgeInsets.all(20.0),
                  child: Text(
                    'Welcome Back',
                    style:GoogleFonts.roboto(
                      letterSpacing: 2.0,
                      fontSize: height*0.038,
                      color: Color.fromRGBO(153, 134, 196,1),
                    ),
                  ),
                ),
              ),
              Padding(
                padding:EdgeInsets.all(height*0.02),
                child: TextField(
                  style:GoogleFonts.roboto(
                    color: Color.fromRGBO(153, 134, 196,1),
                    letterSpacing: 4.0,
                  ),
                  keyboardType: TextInputType.emailAddress,
                  onChanged: (value){
                    email=value;
                  },
                  decoration: InputDecoration(
                      hintText: 'Email',
                      hintStyle: GoogleFonts.abel(
                        color: Color.fromRGBO(153, 134, 196,1),
                        letterSpacing: 4.0,
                      )
                  ),
                ),
              ),
              Padding(
                padding:EdgeInsets.all(height*0.02),
                child: TextField(
                  style:GoogleFonts.roboto(
                    color: Color.fromRGBO(153, 134, 196,1),
                    letterSpacing: 4.0,
                  ),
                  obscureText: true,
                  onChanged: (value){
                    password=value;
                  },
                  decoration: InputDecoration(
                      hintText: 'Password',
                      hintStyle: GoogleFonts.abel(
                        color: Color.fromRGBO(153, 134, 196,1),
                        letterSpacing: 4.0,
                      )
                  ),
                ),
              ),
              Center(
                child: RoundedButton(
                    color: Color.fromRGBO(94, 73, 163, 1),
                    title: 'Login',

                    onPressed:(){ Navigator.pushReplacementNamed(context, Dashboard.id);
                    }
                ),
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  SizedBox(
                    width: width*0.2,
                    child: Divider(
                      color: Colors.pink,
                      thickness: 1.0,
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.symmetric(horizontal: width*0.05),
                    child: Text(
                      'Or',
                      style: GoogleFonts.roboto(
                        color: Color.fromRGBO(153, 134, 196,1),
                        letterSpacing: 2.0,
                      ),
                    ),
                  ),
                  SizedBox(
                    width: width*0.2,
                    child: Divider(
                      color: Colors.pink,
                      thickness: 1.0,
                    ),
                  ),
                ],
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  RaisedButton(
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(70.0),
                    ),
                    disabledColor: Color.fromRGBO(94, 73, 163, 1),
                    color: Color.fromRGBO(153, 134, 196,1),
                    elevation: 5.0,
                    child: Container(
                      width: width*0.3,
                      height: height*0.07,
                      child: Center(
                        child: Text(
                          'Google',
                          style: GoogleFonts.roboto(
                            letterSpacing: 1.0,
                            fontSize: height*0.02,
                            color: Colors.white,
                          ),
                        ),
                      ),
                    ),

                  ),
                  SizedBox(
                    width: width*0.1,
                  ),
                  RaisedButton(
                    shape: RoundedRectangleBorder(

                      borderRadius: BorderRadius.circular(70.0),
                    ),
                    disabledColor: Color.fromRGBO(94, 73, 163, 1),
                    color: Color.fromRGBO(153, 134, 196,1),
                    elevation: 0.0,
                    child: Container(
                      width: width*0.3,
                      height: height*0.07,
                      child: Center(
                        child: Text(
                          'Facebook',
                          style: GoogleFonts.roboto(
                            letterSpacing: 1.0,
                            fontSize: height*0.02,
                            color: Colors.white,
                          ),
                        ),
                      ),
                    ),
                    onPressed: null,//(){
                    //   initiateFacebookLogin();
                    //},
                  ),
                ],
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: <Widget>[
                  Text(
                    "Do not have an account?",
                    style: GoogleFonts.roboto(
                        letterSpacing: 1.0,
                        fontSize: 12.0,
                        color: Color.fromRGBO(153, 134, 196,1)
                    ),
                  ),
                  FlatButton(
                    onPressed: (){
                      Navigator.pushReplacementNamed(context, RegistrationScreen.id);
                    },
                    child: Text(
                      'Sign up',
                      style: GoogleFonts.roboto(
                        letterSpacing: 0.25,
                        fontSize: 14.0,
                        color: Color.fromRGBO(153, 134, 196,1),
                      ),
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
