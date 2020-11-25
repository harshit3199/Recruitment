import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/widgets.dart';
import 'package:recruitments/TileScreen.dart';
import 'SideDrawer.dart';
import 'package:google_fonts/google_fonts.dart';
import 'TileScreen.dart';

class Dashboard extends StatefulWidget{
  static String id = 'Dashboard';
  @override
  _DashboardState createState() => _DashboardState();
}

class _DashboardState extends State<Dashboard> {
  String search;
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
    // TODO: implement build
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Color.fromRGBO(94, 73, 163, 1),
        centerTitle: true,
        title: Text(
            'Lancelot.com', style: GoogleFonts.pacifico(fontSize: width*0.08),

        ),
      ),
      drawer: SideDrawer(),
      body: SafeArea(
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,

            children: <Widget>[

              Row(
              children: <Widget>[

                Padding(
                  padding:EdgeInsets.all(5.0),
                    child:IconButton(
                          icon: Icon(Icons.search),
                      onPressed: (){if(search.isEmpty){}},
                    ),
                ),
              Container(
                 width:width*0.8,
                child: Padding(
                  padding: EdgeInsets.all(10.0),
                  child: TextField(
                  onChanged: (value) {
                    search = value;},
                    decoration: InputDecoration(
                      fillColor: Color.fromRGBO(153, 134, 196,1),
                      filled: true,
                      errorText: 'Field is empty',
                      hintText: 'Search',
                      border: const OutlineInputBorder(),
                  ),
                ),
              ),
              ),
              ],
              ),
              Container(
                height:height*0.4,
                decoration: BoxDecoration(
                image: DecorationImage(image: AssetImage('assets/images/work.png'),
              ),
                ),
    ),
              Container(
                width: width*0.8,
                child: Padding(
                  padding: EdgeInsets.only(left:50, top: 10),
                  child: Text(
                    'Explore Jobs',
                    style:GoogleFonts.robotoCondensed(
                      letterSpacing: 1.0,
                      fontSize: 40,
                      color: Color.fromRGBO(153, 134, 196,1),
                    ),
                  ),
                ),
              ),
              SingleChildScrollView(
                scrollDirection: Axis.horizontal,
                child: Row(

                  children:<Widget>[

                    Padding(
                      padding: EdgeInsets.all(20.0),

                      child: Container(
                        width: width*0.60,
                        height: height*0.40,
                        color: Color.fromRGBO(153, 134, 196,1),
                      ),
                    ),
                    Padding(
                      padding: EdgeInsets.all(20.0),
                      child: GestureDetector(
                        onTap: (){TileScreen();},
                      child: Container(
                        width: width*0.60,
                        height: height*0.40,
                        color: Color.fromRGBO(153, 134, 196,1),
                      ),
                      ),
                    ),

                    Padding(
                      padding: EdgeInsets.all(20.0),
                      child: Container(
                        width: width*0.60,
                        height: height*0.40,
                        color: Color.fromRGBO(153, 134, 196,1),

                      ),
                    ),

                    Padding(
                      padding: EdgeInsets.all(20.0),
                      child: Container(
                        width: width*0.60,
                        height: height*0.40,
                        color: Color.fromRGBO(153, 134, 196,1),

                      ),
                    ),

                    Padding(
                      padding: EdgeInsets.all(20.0),
                      child: Container(
                        width: width*0.60,
                        height: height*0.40,
                        color: Color.fromRGBO(153, 134, 196,1),

                      ),
                    ),

                    Padding(
                      padding: EdgeInsets.all(20.0),
                      child: Container(
                        width: width*0.60,
                        height: height*0.40,
                        color: Color.fromRGBO(153, 134, 196,1),

                      ),
                    ),

                    Padding(
                      padding: EdgeInsets.all(20.0),
                      child: Container(
                        width: width*0.60,
                        height: height*0.40,
                        color: Color.fromRGBO(153, 134, 196,1),

                      ),
                    ),

                    Padding(
                      padding: EdgeInsets.all(20.0),
                      child: Container(
                        width: width*0.60,
                        height: height*0.40,
                        color: Color.fromRGBO(153, 134, 196,1),

                      ),
                    ),

                    Padding(
                      padding: EdgeInsets.all(20.0),
                      child: Container(
                        width: width*0.60,
                        height: height*0.40,
                        color: Color.fromRGBO(153, 134, 196,1),

                      ),
                    ),


                  ],
                ),
              ),
              Divider(thickness: 1.0,),
              Padding(
                    padding: EdgeInsets.all(10.0),
                    child: Container(
                      child: Text(
                        'The Companies That Hire',
                        style: GoogleFonts.roboto(fontSize: width*0.06, color: Color.fromRGBO(153, 134, 196,1)),

                      ),
                    ),
                  ),
              Container(
                color: Color.fromRGBO(153, 134, 196,0.5),
                child: Padding(
                padding: EdgeInsets.all(20.0),
                child: Row(
                  children: [
                    Padding(
                    padding: EdgeInsets.all(10.0),
                    child: Text("Google"),),
                    Padding(
                      padding: EdgeInsets.all(10.0),
                      child: Text("Amazon"),),
                    Padding(
                      padding: EdgeInsets.all(10.0),
                      child: Text("Intel"),),
                    Padding(
                      padding: EdgeInsets.all(10.0),
                      child: Text("Netflix"),),
                  ],
                ),
                ),
              ),
              Container(
                width: width*0.8,
                child: Padding(
                  padding: EdgeInsets.only(left:50, top: 10),
                  child: Text(
                    'Your Interests',
                    style:GoogleFonts.robotoCondensed(
                      letterSpacing: 1.0,
                      fontSize: 40,
                      color: Color.fromRGBO(153, 134, 196,1),
                    ),
                  ),
                ),
              ),
              SingleChildScrollView(
                scrollDirection: Axis.horizontal,
                child: Row(

                  children:<Widget>[


                    Padding(
                      padding: EdgeInsets.all(20.0),
                      child: Container(
                        width: width*0.60,
                        height: height*0.40,
                        color: Color.fromRGBO(153, 134, 196,1),

                      ),
                    ),
                    Padding(
                      padding: EdgeInsets.all(20.0),
                      child: Container(
                        width: width*0.60,
                        height: height*0.40,
                        color: Color.fromRGBO(153, 134, 196,1),

                      ),
                    ),

                    Padding(
                      padding: EdgeInsets.all(20.0),
                      child: Container(
                        width: width*0.60,
                        height: height*0.40,
                        color: Color.fromRGBO(153, 134, 196,1),

                      ),
                    ),

                    Padding(
                      padding: EdgeInsets.all(20.0),
                      child: Container(
                        width: width*0.60,
                        height: height*0.40,
                        color: Color.fromRGBO(153, 134, 196,1),

                      ),
                    ),

                    Padding(
                      padding: EdgeInsets.all(20.0),
                      child: Container(
                        width: width*0.60,
                        height: height*0.40,
                        color: Color.fromRGBO(153, 134, 196,1),

                      ),
                    ),

                    Padding(
                      padding: EdgeInsets.all(20.0),
                      child: Container(
                        width: width*0.60,
                        height: height*0.40,
                        color: Color.fromRGBO(153, 134, 196,1),

                      ),
                    ),

                    Padding(
                      padding: EdgeInsets.all(20.0),
                      child: Container(
                        width: width*0.60,
                        height: height*0.40,
                        color: Color.fromRGBO(153, 134, 196,1),

                      ),
                    ),

                    Padding(
                      padding: EdgeInsets.all(20.0),
                      child: Container(
                        width: width*0.60,
                        height: height*0.40,
                        color: Color.fromRGBO(153, 134, 196,1),

                      ),
                    ),

                    Padding(
                      padding: EdgeInsets.all(20.0),
                      child: Container(
                        width: width*0.60,
                        height: height*0.40,
                        color: Color.fromRGBO(153, 134, 196,1),

                      ),
                    ),
                  ],
                ),
              ),

              Divider(thickness: 1.0),
              Container(
                width: width*1,
                color: Color.fromRGBO(153, 134, 196,0.5),
                child: Padding(
                  padding: EdgeInsets.all(20.0),
                  child: Column(
                    children: [
                        Text("About us"),
                        Text("Contact US"),
                      Text("Advirtisment"),
                    ],
                  ),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}