final bookExample = {
  "slug": "harry-potter-and-the-philosopher-s-stone",
  "title": "Harry Potter and the Philosopher's Stone",
  "summary":
      "Harry Potter has never even heard of Hogwarts when the letters start dropping on the doormat at number four, Privet Drive. Addressed in green ink on yellowish parchment with a purple seal, they are swiftly confiscated by his grisly aunt and uncle. Then, on Harry's eleventh birthday, a great beetle-eyed giant of a man called Rubeus Hagrid bursts in with some astonishing news: Harry Potter is a wizard, and he has a place at Hogwarts School of Witchcraft and Wizardry. An incredible adventure is about to begin!",
  "author": "J. K. Rowling",
  "release_date": "1997-06-26",
  "dedication":
      "For Jessica, who loves stories, for Anne, who loved them too, and for Di, who heard this one first",
  "pages": 223,
  "order": 1,
  "cover":
      "https://www.wizardingworld.com/images/products/books/UK/rectangle-1.jpg",
  "wiki":
      "https://harrypotter.fandom.com/wiki/Harry_Potter_and_the_Philosopher's_Stone"
};

class Book {
  String slug;
  String title;
  String summary;
  String author;
  String releaseDate;
  String dedication;
  int pages;
  int order;
  String cover;
  String wiki;

  Book({
    required this.slug,
    required this.title,
    required this.summary,
    required this.author,
    required this.releaseDate,
    required this.dedication,
    required this.pages,
    required this.order,
    required this.cover,
    required this.wiki,
  });

  factory Book.fromJson(Map<String, Object?> json) => Book(
        slug: json['slug'] as String,
        title: json['title'] as String,
        summary: json['summary'] as String,
        author: json['author'] as String,
        releaseDate: json['release_date'] as String,
        dedication: json['dedication'] as String,
        pages: json['pages'] as int,
        order: json['order'] as int,
        cover: json['cover'] as String,
        wiki: json['wiki'] as String,
      );
}
