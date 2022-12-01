import 'package:chalange2/text.dart';
import 'package:chalange2/button.dart';
import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  var _value=false;
  @override
  Widget build(BuildContext context) {
    return  Scaffold(
     appBar:   AppBar(title:const Text("Home",style: TextStyle(fontSize: 30,fontWeight: FontWeight.bold),),
        centerTitle: true,
        ),


      body:  ListView(
          children: [
            Center(child: Image.asset("images/lab5.jpeg")),
            Textprojectenter(title: "image",title1: "UX Designer", title2: "Student"),
           
            MyWidgetButton(title: "frist",
              onPressed: () {
              showModalBottomSheet(context: context,
               builder: (context)=> Center(
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,                
                  children: [
                    Text("Success",
                    style: TextStyle(color: Colors.blue)),
                  Image.network("https://www.shutterstock.com/image-vector/green-check-mark-icon-260nw-1308102055.jpg") 
                  ],
                ),
               ));
                },),
                   
            MyWidgetButton(title:"secound", onPressed: () { 
               showModalBottomSheet(context: context,
               builder: (context)=> Center(
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,                
                  children: [
                     Text("setting",
                    style: TextStyle(color: Colors.blue)),
                    SwitchListTile
                    (value: _value, onChanged: (value)
                    {
                      _value=value;
                    },
                    title: Text("frist"),
                    ),
                    
                  ]
                ),
               ));

             },),

          ]
      )
      
    );
  }
}