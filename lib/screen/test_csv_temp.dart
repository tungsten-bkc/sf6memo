import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:streetfightermemo/screen/testscreen.dart';

class TestCsvTmp extends StatelessWidget {
  const TestCsvTmp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: DefaultTabController(
        length: 4,
        child: Scaffold(
          appBar: AppBar(
            leading: IconButton(
              icon: const Icon(
                Icons.arrow_back,
                color: Colors.white,
              ),
              onPressed: () => Navigator.pop(context),
            ),
            title: const Text('JAMIE'),
            bottom: const TabBar(tabs: <Widget>[
              Tab(text: '通常技',),
              Tab(text: '特殊技',),
              Tab(text: '必殺技',),
              Tab(text: 'SA',),
            ]),
          ),
          body:const TabBarView(
            children: <Widget>[
              TestScreen(path: 'data/jamie/nomal_technique.csv'),
              TestScreen(path: 'data/jamie/unique_technique.csv'),
              TestScreen(path: 'data/jamie/special_technique.csv'),
              TestScreen(path: 'data/jamie/super_arts.csv'),
            ],
          ),
        ),
      ),
    );
  }
}
