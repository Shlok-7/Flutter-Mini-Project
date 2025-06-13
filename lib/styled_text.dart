import 'package:flutter/material.dart';
// custom widget just only for styling text
class StyledText  extends StatelessWidget{
   const StyledText( this.text,{super.key});

   final String text;

  @override
  Widget build(context){
    return   Text(
              text,
              style: const TextStyle(
              color: Colors.white,
              fontSize: 28,
            ),
            );
  }
}