import 'package:flutter/material.dart';

class splashScreen extends StatefulWidget {
  const splashScreen({Key? key}) : super(key: key);

  @override
  State<splashScreen> createState() => _splashScreenState();
}

class _splashScreenState extends State<splashScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.white,
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              const SizedBox(height: 220,),
              Image.asset(
                "assets/images/logo.png",
                height: 80,
              ),


              const SizedBox(height: 240,),
              //const Text("from"),
              Image.asset("assets/images/logo3.png",height: 40, alignment: Alignment.bottomLeft,)



            ],
          ),
        ));
  }
}