import 'package:spark/features/profile/domain/entities/user_info_entity.dart';

abstract class ProfileRemoteDataSource {
  Future<UserInfoEntity> getUserInfo();
}
