import 'dart:convert';

import 'package:harry_potter/core/apis.dart';
import 'package:harry_potter/models/book.dart';
import 'package:harry_potter/models/character.dart';
import 'package:harry_potter/models/datas.dart';
import 'package:harry_potter/models/movie.dart';
import 'package:harry_potter/models/potion.dart';
import 'package:harry_potter/models/spell.dart';
import 'package:harry_potter/services/network_service.dart';
import 'package:test/test.dart';

void main() {
  group("Datas Model Test", () {
    test("All Book Datas", () async {
      final response = await Network.methodGet(api: Api.books);
      final json = jsonDecode(response!);
      final data = (json['data'] as List).map((e) => e as Map).toList();
      final Datas<Book> books = Datas<Book>.fromJson(data);
      expect(books, const TypeMatcher<Datas<Book>>());
    });

    test("All Character Datas", () async {
      final response = await Network.methodGet(api: Api.characters);
      final json = jsonDecode(response!);
      final data = (json['data'] as List).map((e) => e as Map).toList();
      final books = Datas<Character>.fromJson(data);
      expect(books, const TypeMatcher<Datas<Character>>());
    });

    test("All Movie Datas", () async {
      final response = await Network.methodGet(api: Api.movies);
      final json = jsonDecode(response!);
      final data = (json['data'] as List).map((e) => e as Map).toList();
      final books = Datas<Movie>.fromJson(data);
      expect(books, const TypeMatcher<Datas<Movie>>());
    });

    test("All Potion Datas", () async {
      final response = await Network.methodGet(api: Api.potions);
      final json = jsonDecode(response!);
      final data = (json['data'] as List).map((e) => e as Map).toList();
      final books = Datas<Potion>.fromJson(data);
      expect(books, const TypeMatcher<Datas<Potion>>());
    });

    test("All Spell Datas", () async {
      final response = await Network.methodGet(api: Api.spells);
      final json = jsonDecode(response!);
      final data = (json['data'] as List).map((e) => e as Map).toList();
      final books = Datas<Spell>.fromJson(data);
      expect(books, const TypeMatcher<Datas<Spell>>());
    });
  });
}