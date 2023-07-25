import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';
import '../bloc/theme_bloc.dart';
import '../const/constant.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final ThemeBloc themeBloc = BlocProvider.of<ThemeBloc>(context);

    return Scaffold(
      appBar: AppBar(
        title: const Text('StreetFighter6 memo'),
        actions: [
          BlocBuilder<ThemeBloc, ThemeData>(builder: (context, theme) {
            return IconButton(
              icon: const Icon(Icons.lightbulb),
              onPressed: () {
                themeBloc.add(ThemeEvent.toggle);
              },
            );
          })
        ],
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
