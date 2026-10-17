import 'package:flutter/material.dart';
import 'package:my_app_vovk/random_fact.dart';

const startAlignment = Alignment.topCenter;
const endAlignment = Alignment.bottomCenter;
class Backgroundcolor extends StatelessWidget {
final Color color1;
final Color color2;
final Color color3;
 const Backgroundcolor(
this.color1,
this.color2,
this.color3,{
super.key});

@override
Widget build(BuildContext context) {
  return Container(
           decoration: BoxDecoration(
             gradient: LinearGradient(
               colors:[
                color1, color2, color3
             ],
             begin: startAlignment,
             end: endAlignment,
             ),
           ),
           child: Center(
             child: Fact()
             ),
            );     
  }
 }