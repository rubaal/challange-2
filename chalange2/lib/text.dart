
import 'package:flutter/material.dart';

class Textprojectenter extends StatelessWidget {
  const Textprojectenter({super.key,this.title,this.title1,this.title2});
final String? title;
 final String? title1;
 final String? title2;
  @override
  Widget build(BuildContext context) {
    return Column(mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Center(
          child: Container(
           child: Center(child: Text(title!.toString(),style: TextStyle(fontSize: 10,fontWeight: FontWeight.bold,color: Colors.black,),)),
            ),
        ),
         Center(
          child: Container(
           child: Center(child: Text(title1!.toString(),style: TextStyle(fontSize: 10,fontWeight: FontWeight.bold,color: Colors.black,),)),
            ),
        ),
         Center(
          child: Container( 
           child: Center(child: Text(title2!.toString(),style: TextStyle(fontSize: 10,fontWeight: FontWeight.bold,color: Colors.black,),)),
            ),
        )
      ],
    )
    ;
  }
}