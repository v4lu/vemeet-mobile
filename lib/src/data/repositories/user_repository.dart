import 'package:v_mobile/src/data/datasources/user_remote_datasource.dart';
import 'package:v_mobile/src/data/models/user_models.dart';

class UserRepository {
  final UserRemoteDatasource _dataSource;

  UserRepository(this._dataSource);

  Future<User> fetchUser() async {
    return await _dataSource.fetchUser();
  }
}
