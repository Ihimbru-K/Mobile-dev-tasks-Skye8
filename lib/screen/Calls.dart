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
             const ListTile(
                leading: CircleAvatar(
                  radius: 25,
                  backgroundImage: const ExactAssetImage("assets/images/Status/s4"),


                ),
                title: Text("Create call link", style: TextStyle(fontSize: 18, color: Colors.black),),
                subtitle: Text("Share a link for your Whatsapp call", style: TextStyle(color: Colors.black45, fontSize: 16),),
              ),

              SizedBox(
                  height: MediaQuery.of(context).size.width*0.04
              ),


              Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [SizedBox(width: MediaQuery.of(context).size.width*0.06,),Text("Recent updates"),],),
              SizedBox(height: MediaQuery.of(context).size.width*0.02,),



              tile("assets/images/Status/s2", "Goddy", "Yesterday 8:42 PM"),
              //const Divider(
              // height: 0.2,
              // ),23, 2;22PM
              tile("assets/images/Status/s3", "Juvitus", "(2) March 23 2:22PM "),
              // const Divider(
              // height: 0.2,
              //),
              tile("assets/images/Status/s4", "Emma", "(3) February 23 3:00 PM"),
              //const Divider(
              //height: 0.2,
              //),
              tile("assets/images/Status/s5", "Pearl", "March 23 2:22PM "),
              //const Divider(
              //height: 0.2,
              //),
              tile("assets/images/Status/s6", "Andrew", "Yesterday 8:42 PM"),
              //const Divider(
              //height: 0.2,
              //),
              tile("assets/images/Status/s7", "Naomi", "(3) February 23 3:00 PM"),
              //const Divider(
              //height: 0.2,
              //),
              tile("assets/images/Status/s8", "Sly", "Yesterday 8:42 PM"),
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
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Text(name,
            style: const TextStyle(fontSize: 18, fontWeight: FontWeight.w600)),
        const Icon( Icons.call, color: Colors.green,

        )
      ],
    ),
    subtitle: Text(

      description, style: const TextStyle(color: Colors.black45, fontSize: 12),

    ),



  );
}
