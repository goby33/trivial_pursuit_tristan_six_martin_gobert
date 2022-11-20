import 'package:bloc/bloc.dart';
import 'package:trivial_pursuit_app/data/jeux/entities/list_questions.dart';
import 'package:trivial_pursuit_app/data/jeux/entities/question.dart';
import 'package:trivial_pursuit_app/presentation/states/jeux_state.dart';

import '../../../data/repositories/question_repository.dart';

class JeuxCubit extends Cubit<JeuxState> {
  QuestionRepository questionRepository;
  JeuxCubit({required this.questionRepository}) : super(JeuxStateLoading());

  Future<List<Question>> test() async {
    //vetifier si c'edt null ou pas
    ListQuestions result = await questionRepository.getQuestionOfTheDay();
    return result.results;
  }

  Future<void> getQuestion() async {
    emit(
      JeuxState.loading(),
    );
    ListQuestions result = await questionRepository.getQuestionOfTheDay();
    emit(
      JeuxState.loaded(
          partie: JeuxPlayers(listQuestions: result, item: 0, goodAnswers: 0)),
    );
  }

  Future<void> nextQuestions() async {
    JeuxPlayers? jeuxPlayers = state.partie;
    if (jeuxPlayers != null) {
      jeuxPlayers.item += 1;
      emit(
        JeuxState.loaded(partie: jeuxPlayers),
      );
    }
  }
}

class JeuxPlayers {
  ListQuestions listQuestions;
  int item;
  int goodAnswers;

  JeuxPlayers({
    required this.listQuestions,
    required this.item,
    required this.goodAnswers,
  });
}
