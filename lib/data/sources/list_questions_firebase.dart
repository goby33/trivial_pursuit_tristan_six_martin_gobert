import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:trivial_pursuit_six_tristan_gobert_martin/config/constants.dart';
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
          .collection(NAME_FOLDERS)
          .withConverter<ListQuestionsModel>(
              fromFirestore: (snapshot, _) =>
                  ListQuestionsModel.fromJson(snapshot.data()!),
              toFirestore: (object, _) => object.toJson());
      _instanceListQuestionsFirebase = ListQuestionsFirebase._();
    }
    return _instanceListQuestionsFirebase!;
  }


  Future<QueryDocumentSnapshot<ListQuestionsModel>?> getQuestionsOfToDay() async {
    final questionsOfToDay =
        await _listQuestionsCollection.get();
    if (questionsOfToDay.docs.length != 0) {
      return questionsOfToDay.docs.first;
    }
    return null;
  }

  Future<void> post({
    required ListQuestionsModel listQuestions,
  }) async {
    _listQuestionsCollection.doc(getDateToday()).set(listQuestions);
  }

  Future<void> delete({required String date}) async {
    _listQuestionsCollection.doc(date).delete();
  }
}
