import 'package:harry_potter/models/book.dart';
import 'package:harry_potter/models/character.dart';
import 'package:harry_potter/models/data.dart';
import 'package:harry_potter/models/datas.dart';
import 'package:harry_potter/models/links.dart';
import 'package:harry_potter/models/meta.dart';
import 'package:harry_potter/models/movie.dart';
import 'package:harry_potter/models/potion.dart';
import 'package:harry_potter/models/spell.dart';

/// R: book, movie, potion, spell, character
/// T: Datas(List) or Data(Map)
///
/// dynamic
class BaseResponse {
  ApiResponse response;

  BaseResponse({required this.response});

  factory BaseResponse.fromJson(Map<String, Object?> json) {
    if(json['data'] is List) {
      String type = (json['data'] as List).first['type'];
      switch(type) {
        case "book": return BaseResponse(response: ApiResponse<Datas<Book>, Book>.fromJson(json));
        case "character": return BaseResponse(response: ApiResponse<Datas<Character>, Character>.fromJson(json));
        case "movie": return BaseResponse(response: ApiResponse<Datas<Movie>, Movie>.fromJson(json));
        case "potion": return BaseResponse(response: ApiResponse<Datas<Potion>, Potion>.fromJson(json));
        default: return BaseResponse(response: ApiResponse<Datas<Spell>, Spell>.fromJson(json));
      }
    } else {
      String type = (json['data'] as Map)['type'];
      switch(type) {
        case "book": return BaseResponse(response: ApiResponse<Data<Book>, Book>.fromJson(json));
        case "character": return BaseResponse(response: ApiResponse<Data<Character>, Character>.fromJson(json));
        case "movie": return BaseResponse(response: ApiResponse<Data<Movie>, Movie>.fromJson(json));
        case "potion": return BaseResponse(response: ApiResponse<Data<Potion>, Potion>.fromJson(json));
        default: return BaseResponse(response: ApiResponse<Data<Spell>, Spell>.fromJson(json));
      }
    }
  }
}

/// static
class ApiResponse<T, R> {
  T data;
  Meta meta;
  Links links;

  ApiResponse({
    required this.data,
    required this.meta,
    required this.links,
  });

  factory ApiResponse.fromJson(Map<String, Object?> json) {
    final T data;

    if (json['data'] is Map) {
      data = Data<R>.fromJson(json['data'] as Map<String, dynamic>) as T;
    } else {
      final listMap = (json['data'] as List).map((e) => e as Map).toList();
      data = Datas<R>.fromJson(listMap) as T;
    }
    final meta = Meta.fromJson(json['meta'] as Map<String, dynamic>);
    final links = Links.fromJson(json['links'] as Map<String, dynamic>);
    return ApiResponse<T, R>(data: data, meta: meta, links: links);
  }
}

