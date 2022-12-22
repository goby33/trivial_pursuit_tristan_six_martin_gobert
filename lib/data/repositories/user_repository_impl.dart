import 'package:trivial_pursuit_six_tristan_gobert_martin/data/models/api_response.dart';
import 'package:trivial_pursuit_six_tristan_gobert_martin/data/models/user/list_users_model.dart';
import 'package:trivial_pursuit_six_tristan_gobert_martin/data/sources/user_firebase.dart';

class UserRepositoryImpl {
  static UserFirebase? _userFirebase;
  static UserRepositoryImpl? _userRepositoryImpl;

  UserRepositoryImpl._();

  static UserRepositoryImpl getInstance() {
    _userRepositoryImpl ??= UserRepositoryImpl._();
    _userFirebase ??= UserFirebase.getInstance();
    return _userRepositoryImpl!;
  }

  Future<ApiResponse<ListUsersModel>> getListUsers() async {
    try {
      final response = await _userFirebase?.getListUsers();
      if (response == null) {
        return FailResponse(0.toString(), failure: "Error user null");
      } else {
        return SuccessResponse(1.toString(), response);
      }
    } catch (e) {
      return FailResponse(e.toString(), failure: e.toString());
    }
  }


}
