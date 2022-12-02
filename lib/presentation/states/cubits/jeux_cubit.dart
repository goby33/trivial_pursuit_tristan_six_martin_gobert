import 'package:bloc/bloc.dart';
import 'package:trivial_pursuit_app/data/jeux/entities/list_questions.dart';
import 'package:trivial_pursuit_app/data/jeux/entities/question.dart';
import 'package:trivial_pursuit_app/presentation/states/jeux_state.dart';

import '../../../data/repositories/question_repository.dart';

class JeuxCubit extends Cubit<JeuxState> {
  QuestionRepository questionRepository;
  JeuxCubit({required this.questionRepository}) : super(JeuxStateInitial());

  Future<List<Question>> test() async {
    //vetifier si c'edt null ou pas
    ListQuestions result = await questionRepository.getQuestionOfTheDay();
    return result.results;
  }
  Future<void> getQuestion() async {
    try {
      emit(
        JeuxState.loading(),
      );
      ListQuestions result = await questionRepository.getQuestionOfTheDay();
     emit(
        JeuxState.loaded(
            listQuestions: result,
            ),
      );
    } catch (e) {
      emit(
        JeuxState.failed(
          failed: e.toString(),
        ),
      );
    }
  }
}


