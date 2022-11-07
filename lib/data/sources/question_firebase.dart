import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:get/get.dart';
import 'package:trivial_pursuit_app/data/jeux/entities/list_questions.dart';

class QuestionFirebase {
  static final FirebaseFirestore _firebaseFirestore =
      FirebaseFirestore.instance;
  static QuestionFirebase? _instanceQuestionFirebase;
  static late final CollectionReference<ListQuestions> _questionRef;

  QuestionFirebase._();

  static QuestionFirebase getInstance() {
    if (_instanceQuestionFirebase == null) {
      _questionRef = _firebaseFirestore
          .collection('questions')
          .withConverter<ListQuestions>(
              fromFirestore: (snapshot, _) =>
                  ListQuestions.fromJson(snapshot.data()!),
              toFirestore: (object, _) => object.toJson());
      _instanceQuestionFirebase = QuestionFirebase._();
    }
    return _instanceQuestionFirebase!;
  }

  String _getDate() {
    DateTime today = DateTime.now();
    return '${today.day}-${today.month}-${today.year}';
  }

  Future<ListQuestions?> getQuestionsOfToDay() async {
    DocumentSnapshot<ListQuestions> questionsOfToDay =
        await _questionRef.doc(_getDate()).get();
    if (!questionsOfToDay.exists) {
      return null;
    }
    return questionsOfToDay.data();
  }

  Future<void> post(ListQuestions listQuestions) async {
    _questionRef
        .doc(_getDate())
        .set(listQuestions)
        .onError((e, _) => print("Error writing document: $e"));
  }

  /*Future<void> delete() async{
    _firebaseFirestore.collection('questions').getDocuments().then((snapshot) {
      for (DocumentSnapshot ds in snapshot.documents){
        ds.reference.delete();
      });
    });*/
}
