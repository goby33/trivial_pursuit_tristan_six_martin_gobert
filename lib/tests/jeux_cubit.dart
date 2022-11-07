import 'package:bloc/bloc.dart';
import 'package:meta/meta.dart';
import 'package:trivial_pursuit_app/data/jeux/entities/list_questions.dart';
import 'package:trivial_pursuit_app/data/jeux/entities/question.dart';

import '../data/repositories/question_repository.dart';

part 'jeux_state.dart';

class JeuxCubit extends Cubit<JeuxState> {
  QuestionRepository questionRepository;
  JeuxCubit({required this.questionRepository}) : super(JeuxInitial());

  Future<List<Question>> test() async {
    //vetifier si c'edt null ou pas
    ListQuestions result = await questionRepository.getQuestionOfTheDay();
    return result.results;
  }
}
