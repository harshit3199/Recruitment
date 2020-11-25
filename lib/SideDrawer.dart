import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:google_fonts/google_fonts.dart';
import 'WelcomeScreen.dart';
class SideDrawer extends StatefulWidget{
  SideDrawer();

  @override
  _SideDrawerState createState() => _SideDrawerState();
}
class _SideDrawerState extends State<SideDrawer> {

  @override
  Widget build(BuildContext context) {
    double height = MediaQuery
        .of(context)
        .size
        .height;
    double width = MediaQuery
        .of(context)
        .size
        .width;
    return Drawer(
      child: Container(
        color: Color.fromRGBO(153, 134, 196,1),
      child:
      ListView(
        children: <Widget>[
          Container(
            color: Color.fromRGBO(94, 73, 163, 1),
            child: Icon(Icons.account_circle_rounded, size: 50,color: Colors.white,)),
          Container(
            color: Color.fromRGBO(94, 73, 163, 1),
            alignment: Alignment.center,
            child:Padding(
              padding: EdgeInsets.all(20.0),
             child: ListTile(
              title: Text('My Account', textAlign: TextAlign.center,
                style: GoogleFonts.roboto(
                    fontSize: 25,color: Colors.white,fontWeight: FontWeight.w500, letterSpacing: 0.06),

              ),
            ),
          ),
          ),
          Divider(thickness: 1),
          ListTile(
            dense: true,
            title: Text('Profile',
              style: GoogleFonts.roboto(
                  fontSize: 22, letterSpacing: 0.5, color: Colors.white),
            ),
          ),
          ListTile(
            title: Text('Completed Jobs',
              style: GoogleFonts.roboto(
                  fontSize: 22, letterSpacing: 0.7, color: Colors.white),
            ),

          ),
          ListTile(
            title: Text('Job Requests',
              style: GoogleFonts.roboto(
                  fontSize: 22, letterSpacing: 0.7, color: Colors.white),
            ),
          ),
          ListTile(
            dense: true,
            title: Text('LogOut',
              style: GoogleFonts.roboto(
                  fontSize: 22, color: Colors.white, letterSpacing: 0.7),
            ),
            onTap: (){ Navigator.pushReplacementNamed(context, WelcomeScreen.id);
            },
          ),
        ],
      ),
      ),
    );
  }
}
