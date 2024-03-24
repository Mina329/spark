class SeasonEntity {
  final String? seasonPoster;
  final int? seasonNumber;
  final int id;

  SeasonEntity(
      {required this.seasonPoster,
      required this.seasonNumber,
      required this.id});

  Map<String, dynamic> toJson() {
    return {
      'seasonPoster': seasonPoster,
      'seasonNumber': seasonNumber,
      'id': id,
    };
  }

  factory SeasonEntity.fromJson(Map<String, dynamic> json) {
    return SeasonEntity(
      seasonPoster: json['seasonPoster'],
      seasonNumber: json['seasonNumber'] as int?,
      id: json['id'],
    );
  }
}
