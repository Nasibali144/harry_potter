import 'dart:convert';
import 'package:flutter/foundation.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:harry_potter/core/apis.dart';
import 'package:harry_potter/models/character.dart';
import 'package:harry_potter/services/network_service.dart';


void main() {
  group("Character Model Test", () {
    test("One Character", () async {
      final response = await Network.methodGet(api: Api.characters, id: "a3701158-39ed-4687-8b9a-a799cfca5811");
      final json = jsonDecode(response!);
      final data = json['data'] as Map;
      final attributes = data['attributes'] as Map;
      final character = Character.fromJson(attributes as Map<String, dynamic>);
      debugPrint("name character: ${character.name}");
      expect(character, const TypeMatcher<Character>());
    });

    test("All Character", () async {
      final List<Character> characters;

      final response = await Network.methodGet(api: Api.characters);
      final json = jsonDecode(response!);
      final data = json['data'] as List;
      characters = data.map((element) {
        final item = element as Map;
        final attributes = item['attributes'] as Map;
        return Character.fromJson(attributes as Map<String, dynamic>);
      }).toList();

      expect(characters, hasLength(data.length));
    });

  });
}