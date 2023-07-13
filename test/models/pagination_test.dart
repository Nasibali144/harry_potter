import 'dart:convert';

import 'package:harry_potter/core/apis.dart';
import 'package:harry_potter/models/pagination.dart';
import 'package:harry_potter/services/network_service.dart';
import 'package:test/test.dart';

void main() {
  group("Pagination Model Test", () {
    test("pagination: books", () async {
      final response = await Network.methodGet(api: Api.books);
      final json = jsonDecode(response!);
      final meta = json['meta'] as Map;
      final pagination = Pagination.fromJson(meta['pagination'] as Map<String, dynamic>);

      expect(pagination, const TypeMatcher<Pagination>());
    });

    test("pagination: characters", () async {
      final response = await Network.methodGet(api: Api.characters);
      final json = jsonDecode(response!);
      final meta = json['meta'] as Map;
      final pagination = Pagination.fromJson(meta['pagination'] as Map<String, dynamic>);

      expect(pagination, const TypeMatcher<Pagination>());
    });


    test("pagination: movies", () async {
      final response = await Network.methodGet(api: Api.movies);
      final json = jsonDecode(response!);
      final meta = json['meta'] as Map;
      final pagination = Pagination.fromJson(meta['pagination'] as Map<String, dynamic>);

      expect(pagination, const TypeMatcher<Pagination>());
    });

    test("pagination: potions", () async {
      final response = await Network.methodGet(api: Api.potions);
      final json = jsonDecode(response!);
      final meta = json['meta'] as Map;
      final pagination = Pagination.fromJson(meta['pagination'] as Map<String, dynamic>);

      expect(pagination, const TypeMatcher<Pagination>());
    });

    test("pagination: spells", () async {
      final response = await Network.methodGet(api: Api.spells);
      final json = jsonDecode(response!);
      final meta = json['meta'] as Map;
      final pagination = Pagination.fromJson(meta['pagination'] as Map<String, dynamic>);

      expect(pagination, const TypeMatcher<Pagination>());
    });
  });
}