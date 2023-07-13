final character = {
  "slug": "1992-gryffindor-vs-slytherin-quidditch-match-spectators",
  "name": "1992 Gryffindor vs Slytherin Quidditch match spectators",
  "born": null,
  "died": null,
  "gender": null,
  "species": null,
  "height": null,
  "weight": null,
  "hair_color": null,
  "eye_color": null,
  "skin_color": null,
  "blood_status": null,
  "marital_status": null,
  "nationality": null,
  "animagus": null,
  "boggart": null,
  "house": null,
  "patronus": null,
  "alias_names": null,
  "family_members": null,
  "jobs": null,
  "romances": null,
  "titles": null,
  "wands": null,
  "image": null,
  "wiki":
      "https://harrypotter.fandom.com/wiki/1992_Gryffindor_vs_Slytherin_Quidditch_match_spectators"
};

class Character {
  String slug;
  String name;
  String? born;
  String? died;
  String? gender;
  String? species;
  String? height;
  String? weight;
  String? hairColor;
  String? eyeColor;
  String? skinColor;
  String? bloodStatus;
  String? maritalStatus;
  String? nationality;
  String? animagus;
  String? boggart;
  String? house;
  String? patronus;
  List<String>? aliasNames;
  List<String>? familyMembers;
  List<String>? jobs;
  List<String>? romances;
  List<String>? titles;
  List<String>? wands;
  String? image;
  String wiki;

  Character({
    required this.slug,
    required this.name,
    required this.born,
    required this.died,
    required this.gender,
    required this.species,
    required this.height,
    required this.weight,
    required this.hairColor,
    required this.eyeColor,
    required this.skinColor,
    required this.bloodStatus,
    required this.maritalStatus,
    required this.nationality,
    required this.animagus,
    required this.boggart,
    required this.house,
    required this.patronus,
    required this.aliasNames,
    required this.familyMembers,
    required this.jobs,
    required this.romances,
    required this.titles,
    required this.wands,
    required this.image,
    required this.wiki,
  });

  factory Character.fromJson(Map<String, Object?> json) => Character(
        slug: json['slug'] as String,
        name: json['name'] as String,
        born: json['born'] as String?,
        died: json['died'] as String?,
        gender: json['gender'] as String?,
        species: json['species'] as String?,
        height: json['height'] as String?,
        weight: json['weight'] as String?,
        hairColor: json['hair_color'] as String?,
        eyeColor: json['eye_color'] as String?,
        skinColor: json['skin_color'] as String?,
        bloodStatus: json['blood_status'] as String?,
        maritalStatus: json['marital_status'] as String?,
        nationality: json['nationality'] as String?,
        animagus: json['animagus'] as String?,
        boggart: json['boggart'] as String?,
        house: json['house'] as String?,
        patronus: json['patronus'] as String?,
        aliasNames: (json['alias_names'] as List?)?.map((e) => e as String).toList(),
        familyMembers:  (json['family_members'] as List?)?.map((e) => e as String).toList(),
        jobs:  (json['jobs'] as List?)?.map((e) => e as String).toList(),
        romances:  (json['romances'] as List?)?.map((e) => e as String).toList(),
        titles:  (json['titles'] as List?)?.map((e) => e as String).toList(),
        wands:  (json['wands'] as List?)?.map((e) => e as String).toList(),
        image: json['image'] as String?,
        wiki: json['wiki'] as String,
      );
}
