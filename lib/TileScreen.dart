import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class TileScreen extends StatefulWidget{
 TileScreen();
  @override
  _TileScreenState createState() => _TileScreenState();
}
class _TileScreenState extends State<TileScreen>{
  @override
  Widget build(BuildContext context){
    double height = MediaQuery.of(context).size.height;
    double width = MediaQuery.of(context).size.width;
    return Scaffold(
        body: SafeArea(
        child: SingleChildScrollView(
        child: Column(
        children: <Widget>[
          Container(
            width: width*1,
            height: height*0.5,
            color: Color.fromRGBO(153, 134, 196,1),
          ),
        ],
        ),
        ),
        ),
    );
 }
}