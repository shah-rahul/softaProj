import 'package:flutter/material.dart';
import 'package:softa/api/dataFetcherApi.dart';
import 'package:softa/model/feedModel.dart';

class HomeScreenViewModel extends ChangeNotifier {
  String title = 'default';
ScrollController scrollController = ScrollController();

  
  void initialise() {
    title = 'initialised';
    scrollController.addListener(() {
      if (scrollController.position.pixels ==
          scrollController.position.maxScrollExtent) {
        getFeedList();
      }
    });
    getFeedList();
    notifyListeners();
  }

  List<FeedModel> feedList = [];
  int count = 1;
  var api = DatafetcherApi();
  getFeedList() async {
    var data = await api.getData(count) as Map;
    var data2 = await api.getData(count + 1) as Map;
    var internalData = data['feedList'] as List;
    var internalData2 = data2['feedList'] as List;
    internalData.forEach((element) {
      feedList.add(FeedModel.fromDB(element));
    });
    internalData2.forEach((element) {
      feedList.add(FeedModel.fromDB(element));
    });
    count = count + 2;
    notifyListeners();
  }
}
