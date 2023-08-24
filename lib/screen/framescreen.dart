import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../bloc/theme_bloc.dart'  ;

class Frame extends StatelessWidget {
  const Frame({
    super.key,
    required this.index,
    required this.list,
    // required this.name,
    // required this.damage,
    // required this.startUp,
    // required this.active,
    // required this.recovery,
    // required this.all,
    // required this.block,
    // required this.hit,
    // required this.drBlock,
    // required this.drHit,
    // required this.note,
  });
  final int index;
  final list;

  @override
  Widget build(BuildContext context) {
    final ThemeBloc themeBloc = BlocProvider.of<ThemeBloc>(context);

    return MaterialApp(
      theme: themeBloc.state,
      home: Scaffold(
        appBar: AppBar(
          title: const Text("Frame Data"),
          leading: IconButton(
            icon: const Icon(
              Icons.arrow_back,
              color: Colors.white,
            ),
            onPressed: () => Navigator.pop(context),
          ),
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
        body: SingleChildScrollView(
          scrollDirection: Axis.horizontal,
          child: SizedBox(
            height: MediaQuery.of(context).size.height,
            child: Column(children: [
              DataTable(
                columns: [
                  const DataColumn(
                    label: Text(
                      '技名',
                      style: TextStyle(fontWeight: FontWeight.bold),
                    ),
                  ),
                  DataColumn(
                    label: Text(list[index][0].toString(),
                        style: const TextStyle(fontWeight: FontWeight.bold)),
                  )
                ],
                rows: [
                  DataRow(cells: [
                    const DataCell(Text('ダメージ')),
                    DataCell(Text(list[index][2].toString()))
                  ]),
                  DataRow(cells: [
                    const DataCell(Text('発生')),
                    DataCell(Text(list[index][4].toString()))
                  ]),
                  DataRow(cells: [
                    const DataCell(Text('持続')),
                    DataCell(Text(list[index][5].toString()))
                  ]),
                  DataRow(cells: [
                    const DataCell(Text('全体')),
                    DataCell(Text(list[index][7].toString()))
                  ]),
                  DataRow(cells: [
                    const DataCell(Text('ガード')),
                    DataCell(Text(list[index][10].toString()))
                  ]),
                  DataRow(cells: [
                    const DataCell(Text('ヒット')),
                    DataCell(Text(list[index][8].toString()))
                  ]),
                  DataRow(cells: [
                    const DataCell(Text('DRガード')),
                    DataCell(Text(list[index][11].toString()))
                  ]),
                  DataRow(cells: [
                    const DataCell(Text('DRヒット')),
                    DataCell(Text(list[index][9].toString()))
                  ]),
                  DataRow(cells: [
                    const DataCell(Text('備考')),
                    DataCell(Text(list[index][13].toString()))
                  ]),
                ],
              ),
            ]),
          ),
        ),
      ),
    );
  }
}
