//made a stateful widget as the data inside it is changing dynamically as compared to gradient_container.dart which has statless widget
import 'dart:math';
import 'package:flutter/material.dart';

final randomizer=Random();  // created a random number generator to generate random numbers for the animation and declare here it as global variable to make the code more efficient rather than declaring inside class 

class DiceRoller  extends StatefulWidget{


  //constructor function
  const DiceRoller({super.key});


  @override
  State< DiceRoller> createState(){
 return _DiceRollerState();
  }
}

class _DiceRollerState extends State<DiceRoller> {
  
  var currentDiceRoll=2;

 void rollDice(){
  
  setState((){  // this function tells flutter that it should re-execute the build functions, so it can update the image in this case 
  currentDiceRoll=randomizer.nextInt(6)+1;//Random 1 to 6 
    
  });
  
 }

 @override
   Widget build(context){
    return Column(
              mainAxisSize: MainAxisSize.min,//used this as column widget horxinatlly make it center but in the vertical axis it takes the entire space .
              children: [
              Image.asset(
                'assets/images/dice-$currentDiceRoll.png',
                width: 200,
            ),
            const SizedBox(height: 20),// this is a widget that adds some space between widgets instead of using padding as commnented below 
            TextButton(
            onPressed:rollDice,
            style: TextButton.styleFrom(
            // padding: const EdgeInsets.only(
            //   top:20,
            //   ) ,  
            foregroundColor:Colors.white ,
            textStyle:const  TextStyle(
              fontSize: 28,
            ) ),
             child:const Text('Roll Dice'),
             )
            ],);
   }
}  // _ starting with underscore means that the class is private and will be used here in this file only .