import 'dart:convert';

import 'package:flutter/foundation.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:harry_potter/core/apis.dart';
import 'package:harry_potter/models/movie.dart';
import 'package:harry_potter/services/network_service.dart';

void main() {
  group("Movie Model Test", () {
    test("One Movie", () async {
      final response = await Network.methodGet(
        api: Api.movies,
        id: "b5c93f7c-49bb-43a6-84f3-796daa75f354",
      );

      final json = jsonDecode(response!);
      final data = json["data"] as Map;
      final attributes = data["attributes"] as Map<String, dynamic>;

      final Movie movie = Movie.fromJson(attributes);
      debugPrint("tittle movie: ${movie.title}");

      expect(movie, const TypeMatcher<Movie>());
    });

    test("All Movies", () async {
      final List<Movie> movies;
      final response = await Network.methodGet(api: Api.movies);

      final json = jsonDecode(response!);
      final data = json["data"] as List;

      movies = data.map((element) {
        final item = element as Map;
        final attributes = item["attributes"] as Map<String, dynamic>;
        return Movie.fromJson(attributes);
      }).toList();

      expect(movies, hasLength(data.length));
    });
  });
}