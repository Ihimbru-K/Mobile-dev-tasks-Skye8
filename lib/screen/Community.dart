import 'package:flutter/material.dart';
class Community extends StatefulWidget {
  const Community({Key? key}) : super(key: key);

  @override
  State<Community> createState() => _CommunityState();
}

class _CommunityState extends State<Community> {
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
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,

        children: [//SizedBox(height: MediaQuery.of(context).size.width*0.1), Image.asset("assets/images/chats/chat1.png"),
          //SizedBox(height: MediaQuery.of(context).size.width*0.1),
          Container(child :Image.asset("assets/images/community/header.png"),),
          Expanded(child: Container(child: Image.asset("assets/images/community/com.png"),),),
          Expanded(child: Container(child: Image.asset("assets/images/community/community.png"),),),



        ],
      ),


    );
  }
}
