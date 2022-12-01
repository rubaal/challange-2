
import 'package:flutter/material.dart';

class MyWidgetButton extends StatelessWidget {
  const MyWidgetButton({super.key, required this.title,this.onPressed});
  final String title;
   final Function()? onPressed;
  @override
  Widget build(BuildContext context) {
    return 
    Container( 

      child: Center(
          child: TextButton(
            child: Text(title.toString(), style:TextStyle(color: Colors.black),),
            style: ElevatedButton.styleFrom(shape: StadiumBorder(),backgroundColor: Colors.blue),
              onPressed: onPressed,
      )  
      ),
  
    );
  }
}
