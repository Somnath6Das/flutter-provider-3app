import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:provider_course/provider_rest_api/model/data_model.dart';
import 'package:provider_course/provider_rest_api/state/app_api_state.dart';
import 'package:provider_course/provider_rest_api/util/data_util.dart';

class ApiView extends StatelessWidget {
  const ApiView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    return Consumer<AppApiState>(builder: (context, provider, child) {
      return Scaffold(
        floatingActionButton: FloatingActionButton(
            child: const Icon(CupertinoIcons.refresh_thick),
            onPressed: () async {
              DataUtil().getData();
              List<DataModel> data = await DataUtil().getData();
              provider.updateDataModel(data);
            }),
        appBar: const CupertinoNavigationBar(
          backgroundColor: Colors.indigo,
          middle: Text(
            "Rest Api with Provider",
            style: TextStyle(color: Colors.white),
          ),
        ),
        body: Container(
          height:
              size.height - const CupertinoNavigationBar().preferredSize.height,
          width: size.width,
          child: provider.dataList.isEmpty
              ? const Center(
                  child: Text(
                  "There is no data!",
                  style: TextStyle(fontSize: 25),
                ))
              : ListView.builder(
                  itemCount: provider.dataList.length,
                  itemBuilder: (context, index) {
                    return ListTile(
                      title: Text(provider.dataList[index].title),
                      leading: Text("${provider.dataList[index].id}"),
                    );
                  },
                ),
        ),
      );
    });
  }
}
