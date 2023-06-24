import 'package:flutter/material.dart';

class calls2 extends StatefulWidget {
  const calls2({Key? key}) : super(key: key);

  @override
  State<calls2> createState() => _calls2State();
}

class _calls2State extends State<calls2> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(child : Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.green,
        title: const Text("11:00"),
        actions: const [Icon(Icons.wifi), Icon(Icons.signal_cellular_alt), Icon(Icons.battery_std_outlined)],

        bottom: const TabBar(tabs: [
          Tab(icon: Icon(Icons.arrow_back),),
          Tab(text: "Calls",)
        ]),
      ),

      body: Container(
        padding: const EdgeInsets.symmetric(vertical: 10),
        child: Column(
          children: [
            Text("Display", style: TextStyle(color: Colors.black45, fontWeight: FontWeight.w600, fontSize: 16),),

            ListTile(
              leading: Icon(Icons.brightness_4_outlined),
              title: Row(
                children: [
                  Text("Theme", style: TextStyle(color: Colors.black, fontSize: 18),)
                ],
              ),
            )

          ],
        ),
      ),

    ));
  }
}
