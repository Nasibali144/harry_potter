import 'package:harry_potter/models/book.dart';
import 'package:harry_potter/models/character.dart';
import 'package:harry_potter/models/movie.dart';
import 'package:harry_potter/models/potion.dart';
import 'package:harry_potter/models/spell.dart';

class Data<T> {
  String id;
  String type;
  T attributes;

  Data({
    required this.id,
    required this.type,
    required this.attributes,
  });

  factory Data.fromJson(Map<String, Object?> json) {
    String id = json['id'] as String;
    String type = json['type'] as String;
    T attributes;

    switch(T) {
      case Book: attributes = Book.fromJson(json['attributes'] as Map<String, dynamic>) as T; break;
      case Character: attributes = Character.fromJson(json['attributes'] as Map<String, dynamic>) as T; break;
      case Movie: attributes = Movie.fromJson(json['attributes'] as Map<String, dynamic>) as T; break;
      case Potion: attributes = Potion.fromJson(json['attributes'] as Map<String, dynamic>) as T; break;
      default: attributes = Spell.fromJson(json['attributes'] as Map<String, dynamic>) as T;
    }

    return Data(id: id, type: type, attributes: attributes);
  }
}
