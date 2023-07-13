import 'dart:convert';

import 'package:flutter/foundation.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:harry_potter/core/apis.dart';
import 'package:harry_potter/models/book.dart';
import 'package:harry_potter/services/network_service.dart';

void main() {
  group("Book Model Test", () {
    test("One Book", () async {
      final response = await Network.methodGet(api: Api.books, id: "cfb11f6c-dc82-474e-9f88-dcddbfee7ae7");
      final json = jsonDecode(response!);
      final data = json['data'] as Map;
      final attributes = data['attributes'] as Map;
      final book = Book.fromJson(attributes as Map<String, dynamic>);
      debugPrint("title book: ${book.title}");
      expect(book, const TypeMatcher<Book>());
    });

    test("All Book", () async {
      final List<Book> books;
      
      final response = await Network.methodGet(api: Api.books);
      final json = jsonDecode(response!);
      final data = json['data'] as List;
      books = data.map((element) {
        final item = element as Map;
        final attributes = item['attributes'] as Map;
        return Book.fromJson(attributes as Map<String, dynamic>);
      }).toList();

      expect(books, hasLength(7));
    });
  });
}