import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:subway/presentation/home/home_screen.dart';
import 'package:subway/presentation/home/home_view_model.dart';

import 'data/subway_api.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        title: 'Flutter Demo',
        theme: ThemeData(
          primarySwatch: Colors.blue,
        ),
        home: ChangeNotifierProvider<HomeViewModel>(
          create: (_) => HomeViewModel(SubwayApi()),
          child: const HomeScreen(),
        ));
  }
}
