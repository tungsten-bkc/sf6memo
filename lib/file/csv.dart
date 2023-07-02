import 'package:flutter/services.dart';


Future<List<CsvData>> getCsvData(String path) async {
  List<CsvData> list = [];
  String csv = await rootBundle.loadString(path);
  for (String line in csv.split("\n")) {
    List rows = line.split(','); // split by comma
    CsvData rowData = CsvData(
        id: int.parse(rows[0]),
        name: rows[1],
        name2: rows[2]
    );
    list.add(rowData);
  }
  return list;
}

class CsvData {
// フィールドを生成
  int id;
  String name;
  String name2;

// コンストラクタ
  CsvData({required this.id, required this.name, required this.name2});
}