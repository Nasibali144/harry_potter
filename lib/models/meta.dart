import 'package:harry_potter/models/pagination.dart';

class Meta {
  Pagination? pagination;
  String copyright;
  String generatedAt;

  Meta({
    required this.pagination,
    required this.copyright,
    required this.generatedAt,
  });

  factory Meta.fromJson(Map<String, Object?> json) => Meta(
        pagination: json['pagination'] != null ? Pagination.fromJson(json['pagination'] as Map<String, dynamic>) : null,
        copyright: json['copyright'] as String,
        generatedAt: json['generated_at'] as String,
      );
}
