Install Provider package in pubspec.yaml

i>	First way

Main.dart


import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:provider_course/state/app_state.dart';
import 'package:provider_course/views/home_page.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    
    return ChangeNotifierProvider(
      create: (context) => AppState(),
      child: const MaterialApp(
        debugShowCheckedModeBanner: false,
        home: HomePage(),
      ),
    );
  }
}



Home_page.dart


import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:provider_course/state/app_state.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);
//
  @override
  Widget build(BuildContext context) {
    AppState provider = Provider.of<AppState>(context);
    return Scaffold(
      appBar: AppBar(
        title: Text("Provider Details Course"),
        backgroundColor: Colors.indigo,
        centerTitle: true,
        elevation: 0,
      ),
      body: Center(
        child: Text("helloworldon${provider.temp}@gmail.com ",style: TextStyle(fontSize: 26),),
      ),
    );
  }
}



app_state.dart


import 'package:flutter/cupertino.dart';
import 'package:provider/provider.dart';

class AppState extends ChangeNotifier {
  int temp = 9;
}



ii>	Second way

Main.dart


import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:provider_course/state/app_state.dart';
import 'package:provider_course/views/home_page.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    
    return ChangeNotifierProvider(
      create: (context) => AppState(),
      child: const MaterialApp(
        debugShowCheckedModeBanner: false,
        home: HomePage(),
      ),
    );
  }
}


Home_page.dart


import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:provider_course/state/app_state.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Provider Details Course"),
        backgroundColor: Colors.indigo,
        centerTitle: true,
        elevation: 0,
      ),
      body: Center(
          child: Consumer<AppState>(builder: (context, providerValue, child) {
        return Text(
          "helloworldon${providerValue.temp}@gmail.com ",
          style: TextStyle(fontSize: 26),
        );
      })),
    );
  }
}

App_state.dart


import 'package:flutter/cupertino.dart';
import 'package:provider/provider.dart';

class AppState extends ChangeNotifier {
  int temp = 017166;
}


