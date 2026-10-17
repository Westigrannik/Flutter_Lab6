import 'package:flutter/material.dart';
import 'package:my_app_vovk/background.dart';

 void main(){
   runApp(
     const MaterialApp(
       debugShowCheckedModeBanner: false,
       home: Scaffold(
         body: Backgroundcolor(Colors.black, Colors.white, Colors.black),
         ),
       ),
     );
 }