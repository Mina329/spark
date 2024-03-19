class GenreModel {
  final String id;
  final String name;
  final GenreModelType type;

  GenreModel({required this.id, required this.name, required this.type});

  factory GenreModel.fromJson(Map<String, dynamic> json) {
    return GenreModel(
      id: json['id'],
      name: json['name'],
      type: parseType(json['type']),
    );
  }
}

enum GenreModelType {
  TV_Show,
  Movie,
  Both,
}

GenreModelType parseType(String type) {
  if (type == 'movie') {
    return GenreModelType.Movie;
  } else if (type == 'tv') {
    return GenreModelType.TV_Show;
  } else {
    return GenreModelType.Both;
  }
}
