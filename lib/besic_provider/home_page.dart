import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:provider_course/besic_provider/app_state.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    //1st way.
    //AppState provider = Provider.of<AppState>(context);
    return Scaffold(
      appBar: AppBar(
        title: const Text("Provider Details Course"),
        backgroundColor: Colors.indigo,
        centerTitle: true,
        elevation: 0,
      ),
      body: Center(
          child: Consumer<AppState>(builder: (context, providerValue, child) {
        return Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              // "helloworldon${providerValue.temp}@gmail.com ",
              //"helloworldon${providerValue.start}@gmail.com ",
              "Provider Value= ${providerValue.name}",
              style: TextStyle(fontSize: 18),
            ),
            SizedBox(height: 50),
            CupertinoButton(
              color: Colors.indigo,
              child: const Text("Press Event"),
              onPressed: () {
                //providerValue.updateTemp(500);
                providerValue.getName("update after 5 sec.");
              },
            )
          ],
        );
      })),
    );
  }
}
