import 'package:flutter/material.dart';
import 'package:streetfightermemo/screen/skillscreen.dart';
import 'package:streetfightermemo/skilllist/jamie_skill.dart';

class JamieScreen extends StatelessWidget {
  const JamieScreen({super.key});
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
          body:TabBarView(
            children: <Widget>[
              SkillScreen(Technique.nomal_technique),
              SkillScreen(Technique.unique_technique),
              SkillScreen(Technique.special_technique),
              SkillScreen(Technique.super_arts)
            ],
          ),
        ),
      ),
    );
  }
}