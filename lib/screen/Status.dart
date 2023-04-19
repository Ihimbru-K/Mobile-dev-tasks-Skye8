import 'package:flutter/material.dart';



class Status extends StatefulWidget {
  const Status({Key? key}) : super(key: key);

  @override
  State<Status> createState() => _StatusState();
}

class _StatusState extends State<Status> with TickerProviderStateMixin {
  late TabController _tabController;

  @override
  void initState() {
    super.initState(); //if error remove line
    _tabController = TabController(length: 4, vsync: this, initialIndex: 1)
      ..addListener(() {
        setState(() {});
      });
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(child: Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.green,
          title: const Text("Whatsapp", style: TextStyle(fontWeight: FontWeight.w600, fontSize: 22.0),),
          actions: const [
            Icon(Icons.camera_alt),
            Icon(Icons.search),
            Icon(Icons.more_vert),
          ],

          bottom: TabBar(
            controller: _tabController,
            indicatorColor: Colors.white,
            tabs: const [
              Tab(icon: Icon(Icons.people),),
              Tab(text: "Chats",),
              Tab(text: "Status"),
              Tab(text: "Calls",),
            ],
          ),
        ),


        body: SingleChildScrollView(
            child: Container(
              padding: const EdgeInsets.symmetric(vertical: 10),
              child: Column(
                children: [
                  ListTile(
                    leading: CircleAvatar(
                      radius: 25,
                      backgroundImage: const ExactAssetImage("assets/images/Status/s1"),


                    ),
                    title: const Text("My Status", style: TextStyle(fontSize: 18, color: Colors.black),),
                    subtitle: const Text("Tap to add status update", style: TextStyle(color: Colors.black45, fontSize: 16),),
                  ),

                  SizedBox(
                    height: MediaQuery.of(context).size.width*0.04
                  ),


                  Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [SizedBox(width: MediaQuery.of(context).size.width*0.06,),Text("Recent updates"),],),
                  SizedBox(height: MediaQuery.of(context).size.width*0.02,),



                  tile("assets/images/Status/s2", "Goddy", "6 minutes ago"),
                  //const Divider(
                   // height: 0.2,
                 // ),
                  tile("assets/images/Status/s3", "Juvitus", "8 minutes ago"),
                 // const Divider(
                   // height: 0.2,
                  //),
                  tile("assets/images/Status/s4", "Emma", "30 minutes ago"),
                  //const Divider(
                    //height: 0.2,
                  //),
                  tile("assets/images/Status/s5", "Pearl", "43 minutes ago"),
                  //const Divider(
                    //height: 0.2,
                  //),
                  tile("assets/images/Status/s6", "Andrew", "45 minutes ago"),
                  //const Divider(
                    //height: 0.2,
                  //),
                  tile("assets/images/Status/s7", "Naomi", "50 minutes ago"),
                  //const Divider(
                    //height: 0.2,
                  //),
                  tile("assets/images/Status/s8", "Sly", "Today 2:00PM"),
                  //const Divider(
                    //height: 0.2,
                  //),




                ],
              ),




            ),
          ),







    ), );


  }
}

ListTile tile(String url, String name, String description){
  return ListTile(
    leading: CircleAvatar(
      radius: 25,
      backgroundImage: ExactAssetImage(url, scale: 0.2),
    ),
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
