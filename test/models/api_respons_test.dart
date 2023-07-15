import 'dart:convert';
import 'package:harry_potter/core/apis.dart';
import 'package:harry_potter/models/api_response.dart';
import 'package:harry_potter/models/book.dart';
import 'package:harry_potter/models/character.dart';
import 'package:harry_potter/models/data.dart';
import 'package:harry_potter/models/datas.dart';
import 'package:harry_potter/models/movie.dart';
import 'package:harry_potter/models/potion.dart';
import 'package:harry_potter/models/spell.dart';
import 'package:harry_potter/services/network_service.dart';
import 'package:test/test.dart';

void main() {
  group("Api Response Model Test", () {
    final apis = [
      Api.books,
      Api.characters,
      Api.potions,
      Api.spells,
      Api.movies,
    ];

    final ids = [
      "cfb11f6c-dc82-474e-9f88-dcddbfee7ae7",
      "a3701158-39ed-4687-8b9a-a799cfca5811",
      "84d0e169-1b55-45b3-8328-29942238e535",
      "b51f2a56-61fc-4d82-8d81-07b3cc842442",
      "b5c93f7c-49bb-43a6-84f3-796daa75f354"
    ];
    test("All api test", () async {
      List<BaseResponse> list = [];
      int count = 0;
      for (String api in apis) {
        final response = await Network.methodGet(api: api, id: ids[count++]);
        final json = jsonDecode(response!);
        final baseResponse = BaseResponse.fromJson(json as Map<String, dynamic>);
        list.add(baseResponse);
      }
      expect(list, hasLength(5));
    });
  });
}