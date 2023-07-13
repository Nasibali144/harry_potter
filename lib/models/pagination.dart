class Pagination {
  int current;
  int? first;
  int? prev;
  int? next;
  int? last;
  int records;

  Pagination({
    required this.current,
    required this.first,
    required this.prev,
    required this.next,
    required this.last,
    required this.records,
  });

  factory Pagination.fromJson(Map<String, Object?> json) => Pagination(
        current: json['current'] as int,
        first: json['first'] as int?,
        prev: json['prev'] as int?,
        next: json['next'] as int?,
        last: json['last'] as int?,
        records: json['records'] as int,
      );
}
