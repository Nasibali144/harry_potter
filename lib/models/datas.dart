import 'data.dart';

class Datas<T> {
  List<Data<T>> list;

  Datas({required this.list});

  factory Datas.fromJson(List<Map> json) {
    final datas = json.map((element) => Data<T>.fromJson(element as Map<String, dynamic>)).toList();
    return Datas(list: datas);
  }
}