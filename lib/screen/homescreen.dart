import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import '../const/constant.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('StreetFighter6 memo'),
      ),
      body: ListView.builder(
          itemCount: Charactor.characters.length,
          itemBuilder: (BuildContext context, int index) {
            return Card(
              child: ListTile(
                title: Text(
                  Charactor.characters[index]['name'],
                  style: const TextStyle(
                      fontWeight: FontWeight.bold, fontStyle: FontStyle.italic),
                ),
                leading: Image.asset(
                    'Image/${Charactor.characters[index]['image']}'),
                onTap: () {
                  GoRouter.of(context).push('/skill',
                      extra: Charactor.characters[index]['name']);
                },
              ),
            );
          }),
    );
  }
}
