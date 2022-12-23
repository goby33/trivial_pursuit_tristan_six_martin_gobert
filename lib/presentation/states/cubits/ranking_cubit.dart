import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:trivial_pursuit_six_tristan_gobert_martin/data/models/api_response.dart';
import 'package:trivial_pursuit_six_tristan_gobert_martin/data/repositories/user_repository_impl.dart';
import 'package:trivial_pursuit_six_tristan_gobert_martin/presentation/states/ranking_state.dart';

class RankingCubit extends Cubit<RankingState> {
  UserRepositoryImpl userRepository;

  RankingCubit({required this.userRepository}) : super(RankingStateLoading());

  Future<void> getProfiles() async {
    final response = await userRepository.getListUsers();
    if (response is SuccessResponse) {
      emit(
        RankingState.ready(listUsersModel: response.data),
      );
    } else if (response is FailResponse) {
      emit(
        RankingStateFailed(
          message: response.toString(),
          dateTime: DateTime.now(),
        ),
      );
    }
  }

  Future<void> searchProfiles({required String text}) async {
    final response = await userRepository.searchUsers(text: text);
    if (response is SuccessResponse) {
      emit(
        RankingState.ready(listUsersModel: response.data),
      );
    } else if (response is FailResponse) {
      emit(
        RankingStateFailed(
          message: response.toString(),
          dateTime: DateTime.now(),
        ),
      );
    }
  }
}
