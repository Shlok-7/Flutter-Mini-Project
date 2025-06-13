import 'package:first_app/dice_roller.dart';
import 'package:flutter/material.dart';

const startAlignment =Alignment.topLeft; // assigned to variables and called below in the colors argument of the Text widget
const endAlignment = Alignment.bottomRight;


// Custom  statelessWidget writtern with keyword class
class GradientConatiner extends StatelessWidget {
  const GradientConatiner(this.color1,this.color2,{super.key});

// can create multiple constructor functions 
  const GradientConatiner.purple({super.key})
     :color1=Colors.deepPurple,
     color2=Colors.indigo;


final Color color1;
final Color color2;



  //initialization work
  // this is where you can do some initialization work before the widget is built


 @override
  Widget build(context){//build method=custom widget method which is called when widget is created
    return Container(
          decoration:  BoxDecoration(
            gradient: LinearGradient(
              colors:[color1,color2],
              begin:startAlignment,
              end: endAlignment,
            ),
          ),
          child: Center(
            child:DiceRoller(), 
            ),
        );
  }          
 }  

 
   
//2nd approach to define colors dynamically using List 
// class GradientConatiner extends StatelessWidget {// Custom Widget writtern with keyword class
//  const GradientConatiner({super.key, required this.colors});

//  final List<Color>colors;  // it is list so can add const in the Box Decoration
//   //initialization work
//   // this is where you can do some initialization work before the widget is built


//  @override
//   Widget build(context){//build method=custom widget method which is called when widget is created
//     return Container(
//           decoration:  BoxDecoration(
//             gradient: LinearGradient(
//               colors: colors,
//               begin:startAlignment,
//               end: endAlignment,
//             ),
//           ),
//           child: const Center(
//             child: StyledText('Hello World'),
//             ),
//         );
//   }          
//  }    