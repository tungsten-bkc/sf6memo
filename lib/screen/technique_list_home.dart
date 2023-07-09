import 'package:flutter/material.dart';
import 'package:streetfightermemo/screen/technique_list.dart';

class TechniqueListHome extends StatelessWidget {
  const TechniqueListHome({super.key, required this.name});

  final String name;
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
            title: Text(name),
            bottom: const TabBar(tabs: <Widget>[
              Tab(
                text: '通常技',
              ),
              Tab(
                text: '特殊技',
              ),
              Tab(
                text: '必殺技',
              ),
              Tab(
                text: 'SA',
              ),
            ]),
          ),
          body: TabBarView(
            children: <Widget>[
              TechniqueList(path: 'assets/$name/nomal_technique.csv'),
              TechniqueList(path: 'assets/$name/unique_technique.csv'),
              TechniqueList(path: 'assets/$name/special_technique.csv'),
              TechniqueList(path: 'assets/$name/super_arts.csv'),
            ],
          ),
        ),
      ),
    );
  }
}
