import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class SecondPage extends StatelessWidget {
  const SecondPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
     
      body: Container(
        padding: const EdgeInsets.symmetric(vertical: 30),
        width: double.infinity,
        decoration: const BoxDecoration(
            gradient: LinearGradient(
                colors: [Colors.yellow, Colors.red],
                begin: Alignment.topLeft,
                end: Alignment.bottomRight)),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            const CircleAvatar(
              radius: 150,
              backgroundImage: AssetImage("assets/ajitd.jpg"),
            ), Container(
              height: 200,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: const [Text("Ajit Doval",style: TextStyle(fontSize: 30,color: Colors.white,fontWeight: FontWeight.bold,),),Text("Age: 77 years",style: TextStyle(fontSize: 20,fontWeight: FontWeight.bold,color: Colors.white,fontStyle: FontStyle.italic),),
                Text("Place of Birth Pauri Garhwal",style: TextStyle(fontSize: 20,fontWeight: FontWeight.bold,fontStyle: FontStyle.italic,color:Colors.white),)],
              ),
            )
          ],
        ),
      ),
    );
  }
}