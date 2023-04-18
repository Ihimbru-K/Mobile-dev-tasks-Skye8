import 'dart:ffi';

import 'package:flutter/material.dart';


class dashBoard extends StatefulWidget {
  const dashBoard({Key? key}) : super(key: key);

  @override
  State<dashBoard> createState() => _dashBoard();
}

//var navsize = (MediaQuery.of()).size.width*0.1

class _dashBoard extends State<dashBoard> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(

          backgroundColor: Colors.green,
          title: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [ Row(
          children: [
          Text("Whatsapp", style: TextStyle(
            color: Colors.white),),
          SizedBox(width : MediaQuery.of(context).size.width*0.5),
          Icon(Icons.camera_alt),
          Icon(Icons.search),
          Icon(Icons.more_vert)]
      ),
             SizedBox(height: MediaQuery.of(context).size.width*0.03,),

             // width: MediaQuery.of(context).size.width*1,
              Row( mainAxisAlignment: MainAxisAlignment.start,
                children: [Image.asset("assets/images/dashimages/nav.png",)],),




      ],

    ),

    ),


      body: Column(
        //mainAxisAlignment: MainAxisAlignment.center,

        children: [SizedBox(height: MediaQuery.of(context).size.width*0.1), Image.asset("assets/images/chats/chat1.png"),
          SizedBox(height: MediaQuery.of(context).size.width*0.1), Image.asset("assets/images/chats/chat1.png"),
          SizedBox(height: MediaQuery.of(context).size.width*0.09), Image.asset("assets/images/chats/chat2.png"),
          SizedBox(height: MediaQuery.of(context).size.width*0.09), Image.asset("assets/images/chats/chat3.png"),
          SizedBox(height: MediaQuery.of(context).size.width*0.09), Image.asset("assets/images/chats/chat4.png"),
          SizedBox(height: MediaQuery.of(context).size.width*0.09), Image.asset("assets/images/chats/chat5.png"),
          SizedBox(height: MediaQuery.of(context).size.width*0.09), Image.asset("assets/images/chats/chat6.png"),


        ],
      ),


    );
  }
}
