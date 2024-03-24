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

  Map<String, dynamic> toJson() {
    return {
      'id': id,
      'userName': userName,
      'voteAverage': voteAverage,
      'reviewContent': reviewContent,
      'reviewDate': reviewDate?.toIso8601String(),
      'userProfile': userProfile,
      'userMail': userMail,
    };
  }

  factory ReviewEntity.fromJson(Map<String, dynamic> json) {
    return ReviewEntity(
      id: json['id'],
      userName: json['userName'],
      voteAverage: json['voteAverage']?.toDouble(),
      reviewContent: json['reviewContent'],
      reviewDate: json['reviewDate'] != null
          ? DateTime.parse(json['reviewDate'])
          : null,
      userProfile: json['userProfile'],
      userMail: json['userMail'],
    );
  }
}
