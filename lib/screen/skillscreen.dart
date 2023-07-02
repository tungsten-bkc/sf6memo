import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class SkillScreen extends StatelessWidget {
  @override

  final Map skills;
  SkillScreen(this.skills); // コンストラクタで引数を受け取る
  Widget build(BuildContext context) {
    return ListView.builder(
        itemCount: skills.length,
        itemBuilder: (BuildContext context,int index) {
          return Container(
            child: ListTile(
              title: Text(skills[index]['name'],
                style: const TextStyle(
                    fontWeight: FontWeight.bold,
                    fontStyle: FontStyle.italic,
                    fontSize: 20
                ),
              ),
              subtitle: Text(skills[index]['command']),
              onTap: () {
                GoRouter.of(context).push('/FRAME');
              },
            ),
          );
        }
    );
  }
}
