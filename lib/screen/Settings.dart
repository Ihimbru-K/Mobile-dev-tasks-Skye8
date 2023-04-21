import 'package:flutter/material.dart';

class Settings extends StatefulWidget {
  const Settings({Key? key}) : super(key: key);

  @override
  State<Settings> createState() => _SettingsState();
}

class _SettingsState extends State<Settings> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(child: Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.green,
        title: const Text("11:10 AM", style: TextStyle(fontWeight: FontWeight.w600, fontSize: 16.0),),
        actions: const [
          Icon(Icons.wifi),
          Icon(Icons.signal_cellular_alt),
          Icon(Icons.battery_std_outlined),
        ],

        bottom: const TabBar(
          tabs:   [
            Tab(icon: Icon(Icons.arrow_back),),
            Tab(text: "Settings",)
          ],
        ),
      ),


      body: SingleChildScrollView(
        child: Container(
          padding: const EdgeInsets.symmetric(vertical: 10),
          child: Column(
            children: [
              ListTile(
                leading: const CircleAvatar(
                  radius: 25,
                  backgroundImage:  ExactAssetImage("assets/images/Status/s1"),


                ),
                title: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: const[
                    Text("~Goddy", style: TextStyle(fontSize: 18, color: Colors.black),),
                    Icon( Icons.qr_code_scanner_rounded, color: Colors.green),],),
                subtitle: const Text("My heart Extols the Lord", style: TextStyle(color: Colors.black45, fontSize: 16),),
              ),





        const Divider(
           height: 0.2,
           ),
              SizedBox(
                  height: MediaQuery.of(context).size.width*0.04
              ),


              Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [SizedBox(width: MediaQuery.of(context).size.width*0.06,), const Text("Recent updates"),],),
              SizedBox(height: MediaQuery.of(context).size.width*0.02,),


              Row(

                children: [const Icon(Icons.key), tile( "Account", "Security notification\n"
                    "change number\n"),]
              ),
              Row(

                  children: [const Icon(Icons.lock), tile("Privacy", "Block contacts\n"
                      "Disappearing messages\n"),]
              ),
              Row(

                  children: [const Icon(Icons.person), tile( "Avatar", "Create, edit profile photo"),]
              ),
              Row(

                  children: [const Icon(Icons.chat), tile( "Chats", "Theme wallpaper, chat history"),]
              ),
              Row(
                  children: [const Icon(Icons.notifications), tile( "Notification", "Message, groups, call tones "),]
              ),
              Row(

                  children: [const Icon(Icons.key), tile( "chats", "Theme, wallpaper, chat\n history"),]
              ),
              Row(

                  children: [const Icon(Icons.circle_outlined), tile( "Storage and data","Network usage, auto-download"),]
              ),
              Row(

                  children: [const Icon(Icons.language), tile( "App language", "English (phone language)"),]
              ),
              Row(

                  children: [const Icon(Icons.help), tile( "Help", "Help center, contact us, privacy policy"),]
              ),
              Row(

                  children: [const Icon(Icons.people), tile( "Invite a friend", "Help center, contact us, privacy policy"),]
              ),



              BottomAppBar(
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    const Text("from"),
                    Image.asset("assets/images/logo3.png",height: 40, alignment: Alignment.bottomLeft,)
                  ],
                ),
              )
            ],


          ),




        ),
      ),







    ), );


  }
}

ListTile tile(String name, String description){
  return ListTile(
    title: Row(
      children: [
        Text(name, style: const TextStyle(color: Colors.black, fontSize: 16, ),
        )
      ],
    ),
    subtitle: Text(

      description, style: const TextStyle(color: Colors.black45, fontSize: 12),

    ),



  );
}



