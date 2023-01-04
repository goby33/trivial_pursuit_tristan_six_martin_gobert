import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:trivial_pursuit_six_tristan_gobert_martin/data/models/list_questions/list_questions_model.dart';

class ListQuestionsFirebase {
  static final FirebaseFirestore _firestore = FirebaseFirestore.instance;
  static late final CollectionReference<ListQuestionsModel>
      _listQuestionsCollection;
  static ListQuestionsFirebase? _instanceListQuestionsFirebase;

  ListQuestionsFirebase._();

  static ListQuestionsFirebase getInstance() {
    if (_instanceListQuestionsFirebase == null) {
      _listQuestionsCollection = _firestore
          .collection('questions')
          .withConverter<ListQuestionsModel>(
              fromFirestore: (snapshot, _) =>
                  ListQuestionsModel.fromJson(snapshot.data()!),
              toFirestore: (object, _) => object.toJson());
      _instanceListQuestionsFirebase = ListQuestionsFirebase._();
    }
    return _instanceListQuestionsFirebase!;
  }

  String _getDate() {
    DateTime today = DateTime.now();
    return '${today.year}-${today.month}-${today.day}';
  }

  Future<ListQuestionsModel?> getQuestionsOfToDay() async {
    DocumentSnapshot<ListQuestionsModel> questionsOfToDay =
        await _listQuestionsCollection.doc(_getDate()).get();
    if (!questionsOfToDay.exists) {
      return null;
    }
    return questionsOfToDay.data();
  }

  Future<void> post({
    required ListQuestionsModel listQuestions,
  }) async {
    _listQuestionsCollection.doc(_getDate()).set(listQuestions);
  }

  Future<void> delete() async {}
}
