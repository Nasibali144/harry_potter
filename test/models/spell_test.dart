import 'dart:convert';
import 'package:flutter/foundation.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:harry_potter/core/apis.dart';
import 'package:harry_potter/models/spell.dart';
import 'package:harry_potter/services/network_service.dart';

void main() {
  group("Potion Model Test", () {
    test("One Spell", () async {
      final response = await Network.methodGet(
        api: Api.spells,
        id: "94128c2f-4180-4daf-81b4-9b96494caa75",
      );

      final json = jsonDecode(response!);
      final data = json["data"] as Map;
      final attributes = data["attributes"] as Map<String, dynamic>;

      final Spell spell = Spell.fromJson(attributes);
      debugPrint("name spell: ${spell.name}");

      expect(spell, const TypeMatcher<Spell>());
    });

    test("All Spells", () async {
      final List<Spell> spells;
      final response = await Network.methodGet(api: Api.spells);

      final json = jsonDecode(response!);
      final data = json["data"] as List;

      spells = data.map((element) {
        final item = element as Map;
        final attributes = item["attributes"] as Map<String, dynamic>;
        return Spell.fromJson(attributes);
      }).toList();

      expect(spells, hasLength(data.length));
    });
  });
}