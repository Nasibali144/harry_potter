import 'dart:convert';

import 'package:harry_potter/core/apis.dart';
import 'package:harry_potter/models/meta.dart';
import 'package:harry_potter/services/network_service.dart';
import 'package:test/test.dart';

void main() {
  group("Meta Model Test", () {
    final list = [Api.characters, Api.books, Api.spells,  Api.movies, Api.potions];

    test("meta: book", () async {
      List<Meta> metas = [];
      for(String api in list) {
        final response = await Network.methodGet(api: api);
        final json = jsonDecode(response!);
        final meta = Meta.fromJson(json['meta'] as Map<String, dynamic>);
        metas.add(meta);
      }
      expect(metas, hasLength(5));
    });
  });
}