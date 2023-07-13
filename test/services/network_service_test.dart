import 'package:flutter/foundation.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:harry_potter/core/apis.dart';
import 'package:harry_potter/services/network_service.dart';

void main() {
  group("Network Service Test", () {
    test("Test Api: /v1/books", () async {
      final response = await Network.methodGet(api: Api.books);
      debugPrint(response);
      expect(response, isNotNull);
    });

    test("Test Api: /v1/books/:id", () async {
      final response = await Network.methodGet(api: Api.books, id: "cfb11f6c-dc82-474e-9f88-dcddbfee7ae7");
      debugPrint(response);
      expect(response, isNotNull);
    });

    test("Test Api: /v1/characters", () async {
      final response = await Network.methodGet(api: Api.characters);
      debugPrint(response);
      expect(response, isNotNull);
    });

    test("Test Api: /v1/characters/:id", () async {
      final response = await Network.methodGet(api: Api.characters, id: "a3701158-39ed-4687-8b9a-a799cfca5811");
      debugPrint(response);
      expect(response, isNotNull);
    });
  });
}

final jsonAll = {
  "data": [
    {
      "id": "94128c2f-4180-4daf-81b4-9b96494caa75",
      "type": "spell",
      "attributes": {
        ///
      },
      /// optional
      "relationships": {
        "chapters": {
          "data": [
            {
              "id": "fc856b8e-bbf2-45c4-af24-00c7ba7b5978",
              "type": "chapter"
            },
          ],
        },
      },
    },
  ],
  "meta": {
    /// optional
    "pagination": {
      "current": 2,
      "first": 1, // optional
      "prev": 1, // optional
      "next": 3, // optional
      "last": 4, // optional
      "records": 309
    },
    "copyright": "© 2023 Potter DB API",
    "generated_at": "2023-07-13T11:52:10.247Z"
  },
  "links": {
    "self": "https://api.potterdb.com/v1/spells?page[number]=2",
    "current": "https://api.potterdb.com/v1/spells?page[number]=2", // optional
    "first": "https://api.potterdb.com/v1/spells?page[number]=1", // optional
    "prev": "https://api.potterdb.com/v1/spells?page[number]=1", // optional
    "next": "https://api.potterdb.com/v1/spells?page[number]=3", // optional
    "last": "https://api.potterdb.com/v1/spells?page[number]=4", // optional
  },
};


final jsonOne = {
  "data": {
    "id": "94128c2f-4180-4daf-81b4-9b96494caa75",
    "type": "spell",
    "attributes": {
      ///
    },
    /// optional
    "relationships": {
      "chapters": {
        "data": [
          {
            "id": "fc856b8e-bbf2-45c4-af24-00c7ba7b5978",
            "type": "chapter"
          },
        ],
      },
    },
  },
  "meta": {
    "copyright": "© 2023 Potter DB API",
    "generated_at": "2023-07-13T11:20:20.968Z"
  },
  "links": {
    "self": "https://api.potterdb.com/v1/spells/94128c2f-4180-4daf-81b4-9b96494caa75"
  },
};
