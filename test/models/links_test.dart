import 'dart:convert';

import 'package:harry_potter/core/apis.dart';
import 'package:harry_potter/models/links.dart';
import 'package:harry_potter/models/meta.dart';
import 'package:harry_potter/services/network_service.dart';
import 'package:test/test.dart';

void main() {
  group("Link Model Test", () {
    final list = [Api.characters, Api.books, Api.spells,  Api.movies, Api.potions];

    test("Link", () async {
      List<Links> links = [];
      for(String api in list) {
        final response = await Network.methodGet(api: api);
        final json = jsonDecode(response!);
        final link = Links.fromJson(json['links'] as Map<String, dynamic>);
        links.add(link);
      }
      expect(links, hasLength(5));
    });
  });
}