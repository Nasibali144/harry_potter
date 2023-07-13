final movieExample = {
  "slug": "fantastic-beasts-and-where-to-find-them",
  "title": "Fantastic Beasts and Where to Find Them",
  "summary":
      "Fantastic Beasts and Where to Find Them tells the tale of magizoologist Newton (Newt) Scamander and his adventure through New York City in the 1920s. A thrilling chase ensues when the magical creatures inside Newt’s suitcase are freed inside the city. Along with his new friends Jacob, a muggle, and Queenie, Newt must recapture all the creatures before they lay destruction to the city. However, things get complicated as a lurking Obscurial reveals itself and the Magical Congress of United States (MACUSA) intervenes.",
  "directors": ["David Yates"],
  "screenwriters": [],
  "producers": [
    "David Heyman",
    "J. K. Rowling",
    "Steve Kloves",
    "Lionel Wigram"
  ],
  "cinematographers": ["Philippe Rousselot"],
  "editors": ["Mark Day"],
  "distributors": ["Warner Bros. Pictures"],
  "music_composers": ["James Newton Howard"],
  "release_date": "2016-11-10",
  "running_time": "133 minutes",
  "budget": "\$175–200 million",
  "box_office": "\$814 million",
  "rating": "PG-13",
  "order": 1,
  "trailer": "https://www.youtube.com/watch?v=Vso5o11LuGU",
  "poster":
      "https://www.wizardingworld.com/images/products/films/rectangle-9.png",
  "wiki":
      "https://harrypotter.fandom.com/wiki/Fantastic_Beasts_and_Where_to_Find_Them_(film)"
};

class Movie {
  String slug;
  String title;
  String summary;
  List<String> directors;
  List<String> screenwriters;
  List<String> producers;
  List<String> cinematographers;
  List<String> editors;
  List<String> distributors;
  List<String> musicComposers;
  String releaseDate;
  String runningTime;
  String budget;
  String boxOffice;
  String rating;
  int order;
  String trailer;
  String? poster;
  String wiki;

  Movie({
    required this.slug,
    required this.title,
    required this.summary,
    required this.directors,
    required this.screenwriters,
    required this.producers,
    required this.cinematographers,
    required this.editors,
    required this.distributors,
    required this.musicComposers,
    required this.releaseDate,
    required this.runningTime,
    required this.budget,
    required this.boxOffice,
    required this.rating,
    required this.order,
    required this.trailer,
    required this.poster,
    required this.wiki,
  });

  factory Movie.fromJson(Map<String, Object?> json) {
    String slug = json["slug"] as String;
    String title = json["title"] as String;
    String summary = json["summary"] as String;
    List<String> directors =
        (json["directors"] as List).map((e) => e as String).toList();
    List<String> screenwriters =
        (json["screenwriters"] as List).map((e) => e as String).toList();
    List<String> producers =
        (json["producers"] as List).map((e) => e as String).toList();
    List<String> cinematographers =
        (json["cinematographers"] as List).map((e) => e as String).toList();
    List<String> editors =
        (json["editors"] as List).map((e) => e as String).toList();
    List<String> distributors =
        (json["distributors"] as List).map((e) => e as String).toList();
    List<String> musicComposers =
        (json["music_composers"] as List).map((e) => e as String).toList();
    String releaseDate = json["release_date"] as String;
    String runningTime = json["running_time"] as String;
    String budget = json["budget"] as String;
    String boxOffice = json["box_office"] as String;
    String rating = json["rating"] as String;
    int order = json["order"] as int;
    String trailer = json["trailer"] as String;
    String? poster = json["poster"] as String?;
    String wiki = json["wiki"] as String;

    return Movie(
      slug: slug,
      title: title,
      summary: summary,
      directors: directors,
      screenwriters: screenwriters,
      producers: producers,
      cinematographers: cinematographers,
      editors: editors,
      distributors: distributors,
      musicComposers: musicComposers,
      releaseDate: releaseDate,
      runningTime: runningTime,
      budget: budget,
      boxOffice: boxOffice,
      rating: rating,
      order: order,
      trailer: trailer,
      poster: poster,
      wiki: wiki,
    );
  }

  @override
  String toString() {
    return "Movie(slug: $slug, title: $title, summary: $summary)";
  }
}
