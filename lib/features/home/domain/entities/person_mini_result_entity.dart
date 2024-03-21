import 'package:spark/core/widgets/enums.dart';

class PersonMiniResultEntity {
  final int id;
  final String? name;
  final String? profilePath;
  final ShowType? showType;

  PersonMiniResultEntity({
    required this.id,
    required this.name,
    required this.profilePath,
    this.showType,
  });
}
