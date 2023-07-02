import 'package:flutter/material.dart';
import 'package:flutter/src/material/input_decorator.dart';

class Frame extends StatelessWidget {
  const Frame({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        home:Scaffold(
          appBar: AppBar(
              title: const Text("Frame Data"),
              leading: IconButton(
                icon: const Icon(
                  Icons.arrow_back,
                  color: Colors.white,
                ),
                onPressed: () => Navigator.pop(context),
              ),
              actions: const [
                Padding(
                    padding: EdgeInsets.only(right:10),
                )
              ]
          ),

          body: SingleChildScrollView(
              child:Container(
                height: MediaQuery.of(context).size.height,
                  child:Column(
                    children:[
                      DataTable(
                        dataRowColor: MaterialStateProperty.resolveWith((states) {
              return Colors.cyan;
              }),
                        decoration: BoxDecoration(
                          border: Border.all(
                            color: Colors.black38, //色
                            width: 2.0, //太さ
                          ),
                        ),
                        columns:
                        const [
                          DataColumn(
                              label: Text('技名',style:
                              TextStyle(
                                fontWeight: FontWeight.bold),
                              ),
                          ),
                          DataColumn(label: Text('酔疾歩 弱',style: TextStyle(
                              fontWeight: FontWeight.bold)),)
                        ],
                        rows:  [
                          DataRow(
                              color: MaterialStateProperty.resolveWith((states) {
                                return Colors.blue[50];
                              }),
                              cells: const [
                            DataCell(Text('ダメージ')),
                            DataCell(Text('810'))
                          ]),
                          const DataRow(cells: [
                            DataCell(Text('発生')),
                            DataCell(Text('17F'))
                          ]),
                          DataRow(
                              color: MaterialStateProperty.resolveWith((states) {
                            return Colors.blue[50];
                          }),cells: const [
                            DataCell(Text('持続')),
                            DataCell(Text('9F'))
                          ]),
                          const DataRow(cells: [
                            DataCell(Text('全体')),
                            DataCell(Text('42F'))
                          ]),
                          DataRow(
                              color: MaterialStateProperty.resolveWith((states) {
                            return Colors.blue[50];
                          }),cells: const [
                            DataCell(Text('ガード')),
                            DataCell(Text('-6F'))
                          ]),
                          const DataRow(cells: [
                            DataCell(Text('ヒット')),
                            DataCell(Text('D (39F)'))
                          ]),
                          DataRow(
                              color: MaterialStateProperty.resolveWith((states) {
                            return Colors.blue[50];
                          }),cells: const [
                            DataCell(Text('カウンター')),
                            DataCell(Text('D (39)'))
                          ]),
                          const DataRow(cells: [
                            DataCell(Text('パニッシュ')),
                            DataCell(Text('D (39)'))
                          ]),
                          DataRow(
                              color: MaterialStateProperty.resolveWith((states) {
                            return Colors.blue[50];
                          }),cells: const [
                            DataCell(Text('備考')),
                            DataCell(Text('SA3でキャンセル可'))
                          ]),
                        ],
                      ),
                      const Expanded(child:
                      TextField(
                        enabled: true,
                        maxLength: 30,
                        style: TextStyle(color: Colors.black),
                        obscureText: false,
                        maxLines:2 ,
                        decoration: InputDecoration(
                          icon: Icon(Icons.text_snippet_outlined),
                          hintText: 'メモを入力してください',
                          labelText: 'memo *',
                        ),
                      ),
                      ),
                    ],
                  ),
              )

          )

        ),
    );
  }
}
