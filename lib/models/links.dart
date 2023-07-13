class Links {
  String self;
  String? current;
  String? first;
  String? prev;
  String? next;
  String? last;

  Links({
    required this.self,
    required this.current,
    required this.first,
    required this.prev,
    required this.next,
    required this.last,
  });

  factory Links.fromJson(Map<String, Object?> json) => Links(
        self: json['self'] as String,
        current: json['current'] as String?,
        first: json['first'] as String?,
        prev: json['prev'] as String?,
        next: json['next'] as String?,
        last: json['last'] as String?,
      );
}
