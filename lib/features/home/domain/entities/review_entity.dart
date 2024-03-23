class ReviewEntity {
  final String id;
  final String? userName;
  final double? voteAverage;
  final String? reviewContent;
  final DateTime? reviewDate;
  final String? userProfile;
  final String? userMail;

  ReviewEntity(
      {required this.id,
      required this.userName,
      required this.voteAverage,
      required this.reviewContent,
      required this.reviewDate,
      required this.userProfile,
      required this.userMail});
}
