import 'package:spark/features/home/domain/entities/image_entity.dart';

List<ImageEntity> parseMovieImagesToImageEntity(
    List<dynamic>? imagesBackdrops) {
  List<ImageEntity> images = [];
  for (var backdrop in imagesBackdrops ?? []) {
    images.add(
      ImageEntity(
        aspectRatio: backdrop.aspectRatio,
        filePath: backdrop.filePath,
      ),
    );
  }
  return images;
}
