import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../file/csv.dart';

class TestScreen extends StatelessWidget {
  const TestScreen({super.key,required this.path});
  final String path;

  @override
  Widget build(BuildContext context) {
    return FutureBuilder(
          future: getCsvData(path),
          builder: (BuildContext context, AsyncSnapshot<dynamic> snapshot) {
            final list=snapshot.data;
            if (!snapshot.hasData) {
              return Center(child: CircularProgressIndicator());
            }
            return ListView.builder(
                itemCount: list.length,
                itemBuilder: (BuildContext context,int index) {
                  return Card(
                    child: ListTile(
                      title: Text(list[index][0].toString()),
                    ),
                  );
                }
            );
          },
        );
  }
}
