import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:provider_course/besic_provider/app_state.dart';
import 'package:provider_course/change_widget_provider/app_state_change_widget.dart';
import 'package:provider_course/change_widget_provider/first_page.dart';
import 'package:provider_course/change_widget_provider/second_page.dart';

class HomeChangeState extends StatelessWidget {
  const HomeChangeState({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    var appProvider = Provider.of<AppStateChangeWidget>(context, listen: false);
    return Scaffold(
       floatingActionButton: FloatingActionButton(
        child: Icon(CupertinoIcons.arrow_right_arrow_left_circle),
        onPressed: () {
          appProvider.updeteWidget();
        },
        backgroundColor: Colors.blue,
      ),
      appBar: const CupertinoNavigationBar(
        backgroundColor: Colors.indigo,
        middle: Text(
          "Change Widget with Provider",
          style: TextStyle(color: Colors.white, fontSize: 20),
        ),
      ),
      body: Consumer<AppStateChangeWidget>(builder: (context, provider, child) {
        return provider.change ?  const SecondPage() : const FirstPage();
      }),
     
    );
  }
}
