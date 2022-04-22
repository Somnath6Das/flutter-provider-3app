import 'package:flutter/cupertino.dart';
import 'package:provider/provider.dart';
import 'package:provider_course/provider_rest_api/model/data_model.dart';

class AppApiState extends ChangeNotifier {
  //Provider working with rest api.
  List<DataModel> dataList = [];
  void updateDataModel(List<DataModel> dataList) {
    this.dataList = dataList;
    notifyListeners();
  }
}
