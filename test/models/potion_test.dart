import 'dart:convert';

import 'package:flutter/foundation.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:harry_potter/core/apis.dart';
import 'package:harry_potter/models/potion.dart';
import 'package:harry_potter/services/network_service.dart';

void main() {
  group("Potion Model Test", () {
    test("One Potion", () async {
      final response = await Network.methodGet(
        api: Api.potions,
        id: "84d0e169-1b55-45b3-8328-29942238e535",
      );

      final json = jsonDecode(response!);
      final data = json["data"] as Map;
      final attributes = data["attributes"] as Map<String, dynamic>;

      final Potion potion = Potion.fromJson(attributes);
      debugPrint("name potion: ${potion.name}");

      expect(potion, const TypeMatcher<Potion>());
    });

    test("All Potions", () async {
      final List<Potion> potions;
      final response = await Network.methodGet(api: Api.potions);

      final json = jsonDecode(response!);
      final data = json["data"] as List;

      potions = data.map((element) {
        final item = element as Map;
        final attributes = item["attributes"] as Map<String, dynamic>;
        return Potion.fromJson(attributes);
      }).toList();

      expect(potions, hasLength(data.length));
    });
  });
}