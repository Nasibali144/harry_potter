class Spell {
  String slug;
  String name;
  String? incantation;
  String category;
  String effect;
  String? light;
  String? hand;
  String? creator;
  String? image;
  String wiki;

  Spell({
    required this.slug,
    required this.name,
    required this.incantation,
    required this.category,
    required this.effect,
    required this.light,
    required this.hand,
    required this.creator,
    required this.image,
    required this.wiki,
  });

  factory Spell.fromJson(Map<String, Object?> json) {
    String slug = json["slug"] as String;
    String name = json["name"] as String;
    String? incantation = json["incantation"] as String?;
    String category = json["category"] as String;
    String effect = json["effect"] as String;
    String? light = json["light"] as String?;
    String? hand = json["hand"] as String?;
    String? creator = json["creator"] as String?;
    String? image = json["image"] as String?;
    String wiki = json["wiki"] as String;

    return Spell(
      slug: slug,
      name: name,
      incantation: incantation,
      category: category,
      effect: effect,
      light: light,
      hand: hand,
      creator: creator,
      image: image,
      wiki: wiki,
    );
  }

  @override
  String toString() {
    return "Potion(Spell: $slug, name: $name, incantation: $incantation)";
  }
}