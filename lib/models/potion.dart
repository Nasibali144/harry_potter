class Potion {
  String slug;
  String name;
  String? effect;
  String? sideEffects;
  String? characteristics;
  String? time;
  String? difficulty;
  String? ingredients;
  String? inventors;
  String? manufacturers;
  String? image;
  String wiki;

  Potion({
    required this.slug,
    required this.name,
    required this.effect,
    required this.sideEffects,
    required this.characteristics,
    required this.time,
    required this.difficulty,
    required this.ingredients,
    required this.inventors,
    required this.manufacturers,
    required this.image,
    required this.wiki,
  });

  factory Potion.fromJson(Map<String, Object?> json) {
    String slug = json["slug"] as String;
    String name = json["name"] as String;
    String? effect = json["effect"] as String?;
    String? sideEffects = json["side_effects"] as String?;
    String? characteristics = json["characteristics"] as String?;
    String? time = json["time"] as String?;
    String? difficulty = json["difficulty"] as String?;
    String? ingredients = json["ingredients"] as String?;
    String? inventors = json["inventors"] as String?;
    String? manufacturers = json["manufacturers"] as String?;
    String? image = json["image"] as String?;
    String wiki = json["wiki"] as String;

    return Potion(
      slug: slug,
      name: name,
      effect: effect,
      sideEffects: sideEffects,
      characteristics: characteristics,
      time: time,
      difficulty: difficulty,
      ingredients: ingredients,
      inventors: inventors,
      manufacturers: manufacturers,
      image: image,
      wiki: wiki,
    );
  }

  @override
  String toString() {
    return "Potion(slug: $slug, name: $name, effect: $effect)";
  }
}