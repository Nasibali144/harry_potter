sealed class Api {
  /// domain
  static const String baseUrl = "api.potterdb.com";

  /// apis
  static const String books = "v1/books";
  static const String characters = "v1/characters";
  static const String movies = "v1/movies";
  static const String potions = "v1/potions";
  static const String spells = "v1/spells";


  /// headers
  static const Map<String, String> headers = {
    'Content-Type': 'application/json',
  };
}