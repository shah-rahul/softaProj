import 'package:provider/provider.dart';
import 'package:softa/app/homeScreen/homeScreen.dart';
import 'package:softa/presentation/theme_manager.dart';
import 'package:flutter/material.dart';
import 'package:softa/providers/dataProvider.dart';
import 'package:softa/widgets/appBar.dart';

class MyApp extends StatefulWidget {
  // const MyApp({Key? key}) : super(key: key); //default constructor

  MyApp._internal(); //private named constructor
  int appState = 0;
  static final MyApp instance = MyApp._internal(); //singleton instance
  factory MyApp() => instance; //factory method

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  
 
  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: [
        ChangeNotifierProvider(create: (_) => dataProvider()),
      ],
      child: MaterialApp(
        theme: getApplicationTheme(),
        home: Scaffold(appBar: returnAppBar(), body: HomeScreen()),
      ),
    );
  }
}
