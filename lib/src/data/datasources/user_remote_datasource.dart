import 'package:v_mobile/core/api/api_endpoints.dart';
import 'package:v_mobile/core/api/dio_client.dart';
import 'package:v_mobile/src/data/models/user_models.dart';

class UserRemoteDatasource {
  final DioClient _dioClient;

  UserRemoteDatasource(this._dioClient);

  Future<User> fetchUser() async {
    return await _dioClient.request<User>(
      path: ApiEndpoints.sessionUser,
      parser: (data) => User.fromJson(data),
    );
  }
}
