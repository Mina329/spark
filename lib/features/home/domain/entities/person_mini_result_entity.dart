import 'package:spark/core/widgets/enums.dart';

class PersonMiniResultEntity {
  final int id;
  final String? name;
  final String? profilePath;
  final ShowType? showType;
  final String? role;
  final String? mostKnownForName;
  final DateTime? mostKnownForDate;

  PersonMiniResultEntity({
    required this.id,
    required this.name,
    required this.profilePath,
    required this.showType,
    required this.role,
    required this.mostKnownForName,
    required this.mostKnownForDate,
  });
  Map<String, dynamic> toJson() {
    return {
      'id': id,
      'name': name,
      'profilePath': profilePath,
      'showType': showType?.toString().split('.').last,
      'role': role,
      'mostKnownForName': mostKnownForName,
      'mostKnownForDate': mostKnownForDate?.toIso8601String(),
    };
  }

  factory PersonMiniResultEntity.fromJson(Map<String, dynamic> json) {
    return PersonMiniResultEntity(
      id: json['id'],
      name: json['name'],
      profilePath: json['profilePath'],
      showType: json['showType'] != null
          ? ShowType.values.firstWhere(
              (e) => e.toString().split('.').last == json['showType'])
          : null,
      role: json['role'],
      mostKnownForName: json['mostKnownForName'],
      mostKnownForDate: json['mostKnownForDate'] != null
          ? DateTime.parse(json['mostKnownForDate'])
          : null,
    );
  }
}
