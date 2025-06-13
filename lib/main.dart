import 'package:flutter/material.dart';
import 'package:first_app/gradient_conatiner.dart';
void main() {
  runApp(
    const MaterialApp(
      home: Scaffold(
        body:  GradientConatiner(
            Color.fromARGB(255, 69, 5, 1),
            Color.fromARGB(31, 210, 4, 4)
        ) ,
      ),
    ),
  );
}
  // runApp= Calling a function//to show user interface on the screen

  //Materail App = Core Widget used a starting point for interface behind the scene

  // home : = Arggument what shoulf be displayed inside of the app UI

  // Text : Widget

  // const =helps Dart optimize runtime performance

  // Scafold = Scaffold is a widget that is used to add common UI elements like appBar, bottomNavigationBar, floating

  // Center = Widget for layouting purpose to make the text in the center

  // Conatiner= Widget that doesnt support setting it to const , so you cant set some parent widget thats higher up in this widgey treee to const 
  // devoration = argumnent with the decoration argument of the box decoration function constructor 
  // inside it also there is gradient argument with linear gradient function constructor
  // inside linear gardient there is argument which accepts list of colors 
  // for now with this there is gradient of colors which goes from left to right on the output screen. But if we have to add gradient from top to bottom we can add more arguments to the linear gradient function constructor.... in this case it is begin and end where we add specificly where we want are gradient to be located .

 