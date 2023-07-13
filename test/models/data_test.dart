import 'dart:convert';

import 'package:flutter/foundation.dart';
import 'package:harry_potter/core/apis.dart';
import 'package:harry_potter/models/book.dart';
import 'package:harry_potter/models/character.dart';
import 'package:harry_potter/models/data.dart';
import 'package:harry_potter/models/movie.dart';
import 'package:harry_potter/models/potion.dart';
import 'package:harry_potter/models/spell.dart';
import 'package:harry_potter/services/network_service.dart';
import 'package:test/test.dart';

void main() {
  group("Data Model Test", () {
    test("Data: Book", () async {
      final response = await Network.methodGet(api: Api.books, id: "cfb11f6c-dc82-474e-9f88-dcddbfee7ae7");
      final json = jsonDecode(response!);
      final dataJson = json['data'] as Map;
      final dataModel = Data<Book>.fromJson(dataJson as Map<String, dynamic>);
      debugPrint("title book: ${dataModel.attributes.author}");
      expect(dataModel, const TypeMatcher<Data<Book>>());
    });

    test("Data: Character", () async {
      final response = await Network.methodGet(api: Api.characters, id: "a3701158-39ed-4687-8b9a-a799cfca5811");
      final json = jsonDecode(response!);
      final dataJson = json['data'] as Map;
      final dataModel = Data<Character>.fromJson(dataJson as Map<String, dynamic>);
      debugPrint("Character name: ${dataModel.attributes.name}");
      expect(dataModel, const TypeMatcher<Data<Character>>());
    });

    test("Data: Potion", () async {
      final response = await Network.methodGet(
        api: Api.potions,
        id: "84d0e169-1b55-45b3-8328-29942238e535",
      );
      final json = jsonDecode(response!);
      final dataJson = json['data'] as Map;
      final dataModel = Data<Potion>.fromJson(dataJson as Map<String, dynamic>);
      debugPrint("Potion name: ${dataModel.attributes.name}");
      expect(dataModel, const TypeMatcher<Data<Potion>>());
    });

    test("Data: Movie", () async {
      final response = await Network.methodGet(
        api: Api.movies,
        id: "b5c93f7c-49bb-43a6-84f3-796daa75f354",
      );
      final json = jsonDecode(response!);
      final dataJson = json['data'] as Map;
      final dataModel = Data<Movie>.fromJson(dataJson as Map<String, dynamic>);
      debugPrint("Movie: ${dataModel.attributes.title}");
      expect(dataModel, const TypeMatcher<Data<Movie>>());
    });

    test("Data: Spell", () async {
      final response = await Network.methodGet(
        api: Api.spells,
        id: "94128c2f-4180-4daf-81b4-9b96494caa75",
      );
      final json = jsonDecode(response!);
      final dataJson = json['data'] as Map;
      final dataModel = Data<Spell>.fromJson(dataJson as Map<String, dynamic>);
      debugPrint("Spell: ${dataModel.attributes.name}");
      expect(dataModel, const TypeMatcher<Data<Spell>>());
    });
  });
}