class ImageEntity {
  final double? aspectRatio;
  final String? filePath;

  ImageEntity({this.aspectRatio, this.filePath});

  Map<String, dynamic> toJson() => {
        'aspectRatio': aspectRatio,
        'filePath': filePath,
      };

  factory ImageEntity.fromJson(Map<String, dynamic> json) => ImageEntity(
        aspectRatio: json['aspectRatio']?.toDouble(),
        filePath: json['filePath'],
      );
}
