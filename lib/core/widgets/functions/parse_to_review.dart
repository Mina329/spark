import 'package:spark/features/home/domain/entities/review_entity.dart';

List<ReviewEntity> parseToReview(List<dynamic>? result) {
  List<ReviewEntity> reviews = [];
  for (var res in result ?? []) {
    reviews.add(
      ReviewEntity(
        id: res.id ?? '',
        userName: res.authorDetails?.name,
        voteAverage: res.authorDetails?.rating?.toDouble(),
        reviewContent: res.content,
        reviewDate: res.createdAt,
        userProfile: res.authorDetails?.avatarPath,
        userMail: res.authorDetails?.username,
      ),
    );
  }
  return reviews;
}
