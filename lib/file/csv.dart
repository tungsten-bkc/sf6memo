import 'package:csv/csv.dart';
import 'package:flutter/services.dart';


Future<List<List>> getCsvData(String path) async {

  final csv = await rootBundle.loadString(path);
  List<List<dynamic>> listData=const CsvToListConverter().convert(csv);

  return listData;
}