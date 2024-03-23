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
}
