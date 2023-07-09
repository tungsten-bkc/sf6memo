import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

import '../file/csv.dart';

class TechniqueList extends StatelessWidget {
  const TechniqueList({super.key, required this.path});
  final String path;

  @override
  Widget build(BuildContext context) {
    return FutureBuilder(
      future: getCsvData(path),
      builder: (BuildContext context, AsyncSnapshot<dynamic> snapshot) {
        final list = snapshot.data;
        if (!snapshot.hasData) {
          return const Center(child: CircularProgressIndicator());
        }
        return ListView.builder(
            itemCount: list.length,
            itemBuilder: (BuildContext context, int index) {
              return GestureDetector(
                  onTap: () {
                    GoRouter.of(context).push('/frame', extra: [list, index]);
                  },
                  child: Card(
                    child: ListTile(
                      title: Text(list[index][0].toString()),
                    ),
                  ));
            });
      },
    );
  }
}
