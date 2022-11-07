import 'package:bloc/bloc.dart';
import 'package:meta/meta.dart';
import 'package:trivial_pursuit_app/data/repositories/user_repository.dart';

part 'user_state.dart';

class UserCubit extends Cubit<UserState> {
  UserCubit({required UserRepository userRepository}) : super(UserInitial());
}
