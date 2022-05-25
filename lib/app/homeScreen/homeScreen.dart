import 'dart:math';

import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:softa/api/dataFetcherApi.dart';
import 'package:softa/app/homeScreen/homeScreen_viewModel.dart';
import 'package:softa/providers/dataProvider.dart';
import 'package:softa/widgets/postConatiner.dart';
import 'package:stacked/stacked.dart';

class HomeScreen extends StatefulWidget {
  HomeScreen({Key? key}) : super(key: key);

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return ViewModelBuilder<HomeScreenViewModel>.reactive(
      viewModelBuilder: () => HomeScreenViewModel(),
      onModelReady: (viewModel) => viewModel.initialise(),
      builder: (context, viewModel, child) => ListView.builder(
        itemCount: viewModel.feedList.length + 1,
        itemExtent: 200,
        controller: viewModel.scrollController,
        itemBuilder: (context, index) {
          if (index == viewModel.feedList.length) {
            return const Center(
              child: CircularProgressIndicator(),
            );
          }
          return PostConatainer(data: viewModel.feedList[index]);
        },
      ),
    );
  }
}
