import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:provider_course/besic_provider/app_state.dart';
import 'package:provider_course/besic_provider/home_page.dart';
import 'package:provider_course/change_widget_provider/app_state_change_widget.dart';
import 'package:provider_course/change_widget_provider/first_page.dart';
import 'package:provider_course/change_widget_provider/home_change_state.dart';
import 'package:provider_course/change_widget_provider/second_page.dart';
import 'package:provider_course/provider_rest_api/state/app_api_state.dart';
import 'package:provider_course/provider_rest_api/views/api_view.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    //for besic_provider app.
    //return ChangeNotifierProvider(
    // create: (context) => AppState(),

    //for provider_rest_api app
    // return ChangeNotifierProvider(
    // create: (context) => AppApiState(),

    //for change_widget_provider
    return ChangeNotifierProvider(
        create: (context) => AppStateChangeWidget(),
        child: const MaterialApp(
          debugShowCheckedModeBanner: false,

          //for besic_provider app home.
          // home:HomePage(),

          //change widget provider.
          home: HomeChangeState(),

          //for provider_rest_api app home.
          //home: ApiView(),
        ));
  }
}
