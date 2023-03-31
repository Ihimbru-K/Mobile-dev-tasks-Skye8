import 'package:flutter/material.dart';

class Welcom extends StatefulWidget {
  const Welcom({Key? key}) : super(key: key);

  @override
  State<Welcom> createState() => _WelcomeState();
}

class _WelcomeState extends State<Welcom> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: const Text(
          "Welcome",
          style: TextStyle(
              color: Colors.white, fontSize: 20, fontWeight: FontWeight.bold),
        ),
        backgroundColor: Colors.green,
      ),
      body: Column(

        children: [
          SizedBox(height: MediaQuery.of(context).size.width*0.3),
          Column(



            mainAxisAlignment: MainAxisAlignment.center,
            children: [




            TextField(


              decoration: InputDecoration(
                  prefixIcon: Icon(Icons.phone),
                  //border: InputBorder.none,
                  hintText: "679874564"),
            ),

          ],),



          const SizedBox(
            height: 50,
          ),

          Column(

            mainAxisAlignment: MainAxisAlignment.center,
            children: [Container(
              width: MediaQuery.of(context).size.width*0.9,
              //width: 100,
              child: RawMaterialButton(

                fillColor: Colors.green,
                elevation: 0.0,
                padding: const EdgeInsets.symmetric(vertical: 10.0),
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(12.0)),
                onPressed: () {},
                child: const Text("Continue",
                  style: TextStyle(color: Colors.white, fontSize: 18),),),
            )],)
        ],
      ),
    );
  }
}
